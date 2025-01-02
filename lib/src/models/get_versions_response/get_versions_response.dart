import 'dart:convert';

import 'message.dart';

class GetVersionsResponse {
  Message? message;

  GetVersionsResponse({this.message});

  factory GetVersionsResponse.fromMap(Map<String, dynamic> data) {
    return GetVersionsResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetVersionsResponse].
  factory GetVersionsResponse.fromJson(String data) {
    return GetVersionsResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }

  /// `dart:convert`
  ///
  /// Converts [GetVersionsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
