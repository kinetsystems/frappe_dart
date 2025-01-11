import 'dart:convert';

import 'message.dart';

class ValidateLinkResponse {
  Message? message;

  ValidateLinkResponse({this.message});

  factory ValidateLinkResponse.fromMap(Map<String, dynamic> data) {
    return ValidateLinkResponse(
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
  /// Parses the string and returns the resulting Json object as [ValidateLinkResponse].
  factory ValidateLinkResponse.fromJson(String data) {
    return ValidateLinkResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [ValidateLinkResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
