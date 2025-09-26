import 'dart:async';

import 'package:socket_io_client/socket_io_client.dart' as io;

/// A real-time client for Frappe that handles Socket.IO connections.
class FrappeRealtimeClient {
  /// Creates a new instance of [FrappeRealtimeClient].
  FrappeRealtimeClient({
    required String baseUrl,
    required String siteName,
    required String cookie,
    // int port = 9000,
  })  : _baseUrl = baseUrl,
        _siteName = siteName,
        _cookie = cookie;
  // _port = port;

  /// Static instance for global access (similar to frappe.socketio in JavaScript)
  static FrappeRealtimeClient? _instance;

  /// Get the global instance of FrappeRealtimeClient
  static FrappeRealtimeClient get socketio {
    if (_instance == null) {
      throw Exception('FrappeRealtimeClient not initialized');
    }
    return _instance!;
  }

  /// Initialize the global instance
  static void initialize({
    required String baseUrl,
    required String siteName,
    required String cookie,
    // int port = 9000,
  }) {
    // Dispose the instance if it exists
    _instance?.dispose();

    _instance = FrappeRealtimeClient(
      baseUrl: baseUrl,
      siteName: siteName,
      cookie: cookie,
      // port: port,
    );
  }

  final String _baseUrl;
  final String _siteName;
  final String _cookie;
  // final int _port;

  io.Socket? _socket;
  bool _lazyConnect = false;

  /// Map to store open tasks with their options
  final Map<String, Map<String, dynamic>> _openTasks = {};

  /// Set to store open documents
  final Set<String> _openDocs = <String>{};

  /// Stream controllers for different events
  final Map<String, StreamController<dynamic>> _eventControllers = {};

  /// Get the socket instance
  io.Socket? get socket => _socket;

  /// Get the host URL for Socket.IO connection
  String _getHost() {
    // TODO: implement ip address instance
    return '$_baseUrl/$_siteName';
  }

  /// Initialize the realtime client
  void init({bool lazyConnect = false, bool disableAsync = false}) {
    if (disableAsync) {
      return;
    }

    if (_socket != null) {
      return;
    }

    _lazyConnect = lazyConnect;

    final host = _getHost();

    final sid = RegExp(r'sid=([^;]+)').firstMatch(_cookie)?.group(1);
    if (sid == null) {
      throw ArgumentError('Invalid cookie format: sid not found');
    }

    // Configure Socket.IO options - matching the working example
    final options = io.OptionBuilder()
        .setTransports(['websocket'])
        .enableForceNew() // Add this to match working example
        .enableReconnection()
        .setReconnectionAttempts(3)
        .disableAutoConnect()
        .setExtraHeaders({'Cookie': 'sid=$sid'})
        .build();

    _socket = io.io(host, options);

    if (_socket == null) {
      print('Unable to connect to $host');
      return;
    }

    _setupListeners();

    // Auto-connect if not lazy connect
    if (!lazyConnect) {
      _socket!.connect();
    }
  }

  /// Connect to the socket if lazy connect is enabled
  void connect() {
    if (_socket != null && !_socket!.connected) {
      _socket!.connect();
      _lazyConnect = false;
    }
  }

  /// Emit an event to the server
  void emit(String event, [List<dynamic>? args]) {
    connect();
    if (_socket != null && _socket!.connected) {
      if (args != null) {
        _socket!.emit(event, args);
      } else {
        _socket!.emit(event);
      }
    } else {
      print('Warning: Socket not connected, cannot emit $event');
    }
  }

  /// Listen to an event
  void on(String event, Function(dynamic) callback) {
    if (_socket != null) {
      _socket!.on(event, callback);
    }
  }

  /// Remove event listener
  void off(String event, [Function(dynamic)? callback]) {
    if (_socket != null) {
      if (callback != null) {
        _socket!.off(event, callback);
      } else {
        _socket!.off(event);
      }
    }
  }

  /// Subscribe to a task
  void subscribe(String taskId, [Map<String, dynamic>? opts]) {
    emit('task_subscribe', [taskId]);
    emit('progress_subscribe', [taskId]);

    if (opts != null) {
      _openTasks[taskId] = opts;
    }
  }

  /// Subscribe to a specific task
  void taskSubscribe(String taskId) {
    emit('task_subscribe', [taskId]);
  }

  /// Unsubscribe from a task
  void taskUnsubscribe(String taskId) {
    emit('task_unsubscribe', [taskId]);
  }

  /// Subscribe to a doctype - Fixed to match working example format
  void doctypeSubscribe(String doctype) {
    // Use the format that works: 'doc_type:DoctypeName'
    final subscriptionKey = 'doc_type:$doctype';
    emit('subscribe', [subscriptionKey]);

    // Also set up a listener for the specific doctype event
    _socket?.on(subscriptionKey, (data) {
      print('📋 $doctype event received: $data');
    });
  }

  /// Unsubscribe from a doctype
  void doctypeUnsubscribe(String doctype) {
    final subscriptionKey = 'doc_type:$doctype';
    emit('unsubscribe', [subscriptionKey]);
  }

  /// Subscribe to a document
  void docSubscribe(String doctype, String docname) {
    final docKey = '$doctype:$docname';

    if (_openDocs.contains(docKey)) {
      return;
    }

    emit('doc_subscribe', [doctype, docname]);
    _openDocs.add(docKey);
  }

  /// Unsubscribe from a document
  bool docUnsubscribe(String doctype, String docname) {
    final docKey = '$doctype:$docname';
    emit('doc_unsubscribe', [doctype, docname]);
    return _openDocs.remove(docKey);
  }

  /// Mark document as open
  void docOpen(String doctype, String docname) {
    emit('doc_open', [doctype, docname]);
  }

  /// Mark document as closed
  void docClose(String doctype, String docname) {
    emit('doc_close', [doctype, docname]);
  }

  /// Publish an event
  void publish(String event, dynamic message) {
    if (_socket != null) {
      emit(event, [message]);
    }
  }

  /// Setup event listeners
  void _setupListeners() {
    if (_socket == null) return;

    _socket!.onConnect((_) {
      print('Connected to Frappe realtime server');
    });

    _socket!.onConnectError((error) {
      print('Error connecting to socket.io: $error');
    });

    _socket!.onDisconnect((_) {
      print('Disconnected from Frappe realtime server');
    });

    _socket!.onError((error) {
      print('Socket error: $error');
    });

    _socket!.on('msgprint', (message) {
      // Handle message print events
      print('Message: $message');
    });

    _socket!.on('alert', (data) {
      print('Alert: $data');
    });

    _socket!.on('notification', (data) {
      print('Notification: $data');
    });

    _socket!.on('pong', (data) {
      print('Pong: $data');
    });

    _socket!.on('progress', (data) {
      // Handle progress events
      if (data is Map<String, dynamic>) {
        final progress = data['progress'];
        if (progress != null && progress is List && progress.length >= 2) {
          final percent = (progress[0] / progress[1]) * 100;
          data['percent'] = percent;
        }

        final percent = data['percent'];
        final title = data['title'] ?? 'Progress';
        final description = data['description'];

        print(
            'Progress: $title - ${percent?.toStringAsFixed(1)}% - $description');
      }
    });

    _socket!.on('task_status_change', (data) {
      final dataMap = data as Map<String, dynamic>?;
      if (dataMap != null) {
        final status = dataMap['status']?.toString().toLowerCase() ?? '';
        _processResponse(data, status);
      }
    });

    _socket!.on('task_progress', (data) {
      _processResponse(data, 'progress');
    });

    // Listen for doctype events (e.g., "doc_type:ToDo")
    _socket!.on('doc_type:*', (data) {
      print('Doctype event: $data');
    });
  }

  /// Process response from server
  void _processResponse(dynamic data, String method) {
    if (data == null) return;

    final dataMap = data as Map<String, dynamic>?;
    if (dataMap == null) return;

    final taskId = dataMap['task_id'] as String?;
    if (taskId == null) return;

    final opts = _openTasks[taskId];
    if (opts == null) return;

    // Handle success
    if (opts[method] != null) {
      final callback = opts[method];
      if (callback is Function) {
        callback(dataMap);
      }
    }

    // Handle standard callback
    if (method == 'success' && opts['callback'] != null) {
      final callback = opts['callback'];
      if (callback is Function) {
        callback(dataMap);
      }
    }

    // Handle always callback
    if (opts['always'] != null) {
      final always = opts['always'];
      if (always is Function) {
        always(dataMap);
      }
    }

    // Handle error
    final statusCode = dataMap['status_code'];
    if (statusCode != null &&
        statusCode is int &&
        statusCode > 400 &&
        opts['error'] != null) {
      final error = opts['error'];
      if (error is Function) {
        error(dataMap);
      }
    }
  }

  /// Disconnect from the socket
  void disconnect() {
    if (_socket != null) {
      _socket!.disconnect();
      _socket = null;
    }
  }

  /// Get a stream for a specific event
  Stream<T> onEvent<T>(String event) {
    if (!_eventControllers.containsKey(event)) {
      _eventControllers[event] = StreamController<T>.broadcast();

      on(event, (data) {
        final controller = _eventControllers[event];
        if (controller != null && !controller.isClosed) {
          try {
            controller.add(data as T);
          } catch (e) {
            // Handle type casting errors
            print('Error casting data to type T: $e');
          }
        }
      });
    }

    return _eventControllers[event]!.stream.cast<T>();
  }

  /// Dispose of the client
  void dispose() {
    disconnect();
    for (final controller in _eventControllers.values) {
      controller.close();
    }
    _eventControllers.clear();
    _openTasks.clear();
    _openDocs.clear();

    // Clear static instance if this is the singleton
    if (_instance == this) {
      _instance = null;
    }
  }
}
