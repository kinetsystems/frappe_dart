import 'dart:convert';

import 'package:frappe_dart/src/models/get_versions_response/message.dart';

class GetVersionsResponse {

  GetVersionsResponse({this.message});

  factory GetVersionsResponse.fromMap(Map<String, dynamic> data) {
    return GetVersionsResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetVersionsResponse].
  factory GetVersionsResponse.fromJson(String data) {
    return GetVersionsResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }
  Message? message;

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Converts [GetVersionsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
