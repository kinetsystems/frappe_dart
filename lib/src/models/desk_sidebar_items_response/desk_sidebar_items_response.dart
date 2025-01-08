import 'dart:convert';

import 'package:frappe_dart/src/models/desk_sidebar_items_response/desk_message.dart';

/// Represents the response for desk sidebar items.
class DeskSidebarItemsResponse {
  /// Creates a new [DeskSidebarItemsResponse] instance.
  DeskSidebarItemsResponse({this.message});

  /// Creates a [DeskSidebarItemsResponse] from a map of key-value pairs.
  ///
  /// The [data] parameter must contain a `message` key whose value is used
  /// to initialize the [message] property, if available.
  factory DeskSidebarItemsResponse.fromMap(Map<String, dynamic> data) {
    return DeskSidebarItemsResponse(
      message: data['message'] == null
          ? null
          : DeskMessage.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  /// Creates a [DeskSidebarItemsResponse] from a JSON string.
  ///
  /// The [data] parameter is decoded into a map, and then used to create
  /// a new [DeskSidebarItemsResponse].
  factory DeskSidebarItemsResponse.fromJson(String data) {
    return DeskSidebarItemsResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }

  /// The message associated with the desk sidebar items response.
  final DeskMessage? message;

  /// Converts the instance to a map of key-value pairs.
  ///
  /// This map can be serialized to JSON or used for other purposes.
  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// Converts the instance to a JSON string.
  ///
  /// Uses [toMap] internally to create the serialized JSON representation.
  String toJson() => json.encode(toMap());

  /// Creates a copy of the current instance with optional modifications.
  ///
  /// The [message] parameter can be provided to override the current value.
  DeskSidebarItemsResponse copyWith({
    DeskMessage? message,
  }) {
    return DeskSidebarItemsResponse(
      message: message ?? this.message,
    );
  }
}
