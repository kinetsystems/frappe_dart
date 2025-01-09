import 'dart:convert';

import 'message.dart';

class UserInfoResponse {
  Message? message;

  UserInfoResponse({this.message});

  factory UserInfoResponse.fromMap(Map<String, dynamic> data) {
    return UserInfoResponse(
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
  /// Parses the string and returns the resulting Json object as [UserInfoResponse].
  factory UserInfoResponse.fromJson(String data) {
    return UserInfoResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [UserInfoResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
