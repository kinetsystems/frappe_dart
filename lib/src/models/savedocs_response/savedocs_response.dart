import 'dart:convert';

import 'package:frappe_dart/src/models/get_doc_response/docinfo.dart';
import 'package:frappe_dart/src/models/savedocs_response/server_message.dart';

class SavedocsReponse<T> {
  const SavedocsReponse({
    this.docs,
    this.docinfo,
    this.serverMessages,
  });

  final List<T>? docs;
  final Docinfo? docinfo;
  final List<ServerMessage>? serverMessages;

  /// Parses the string and returns the resulting JSON object as [SavedocsReponse].
  static SavedocsReponse<T> fromJson<T>(
    String data,
    T Function(Map<String, dynamic>) fromMapT,
  ) {
    return fromMap(json.decode(data) as Map<String, dynamic>, fromMapT);
  }

  static SavedocsReponse<T> fromMap<T>(
    Map<String, dynamic> data,
    T Function(Map<String, dynamic>) fromMapT,
  ) {
    return _SavedocsReponseImpl<T>(
      docs: (data['docs'] as List<dynamic>?)
          ?.map((e) => fromMapT(e as Map<String, dynamic>))
          .toList(),
      docinfo: data['docinfo'] != null
          ? Docinfo.fromMap(data['docinfo'] as Map<String, dynamic>)
          : null,
      serverMessages: (data['_server_messages'] is String)
          ? (json.decode(data['_server_messages'] as String) as List<dynamic>)
              .map(
                (e) => ServerMessage.fromMap(
                  json.decode(e as String) as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
    );
  }

  Map<String, dynamic> toMap() => {
        'docs': docs?.map((e) => (e as dynamic).toMap()).toList(),
        'docinfo': docinfo?.toMap(),
        '_server_messages':
            json.encode(serverMessages?.map((e) => e.toMap()).toList()),
      };

  /// Converts [SavedocsReponse] to a JSON string.
  String toJson() => json.encode(toMap());
}

/// Concrete implementation of `SavedocsReponse`
class _SavedocsReponseImpl<T> extends SavedocsReponse<T> {
  const _SavedocsReponseImpl({
    super.docs,
    super.docinfo,
    super.serverMessages,
  });
}
