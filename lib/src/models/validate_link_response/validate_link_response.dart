import 'dart:convert';

import 'package:frappe_dart/src/models/validate_link_response/message.dart';

class ValidateLinkResponse {
  ValidateLinkResponse({this.message});

  factory ValidateLinkResponse.fromMap(Map<String, dynamic> data) {
    return ValidateLinkResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ValidateLinkResponse].
  factory ValidateLinkResponse.fromJson(String data) {
    return ValidateLinkResponse.fromMap(
        json.decode(data) as Map<String, dynamic>,);
  }
  Message? message;

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Converts [ValidateLinkResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
