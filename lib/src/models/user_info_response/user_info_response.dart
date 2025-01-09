import 'dart:convert';

import 'package:frappe_dart/src/models/user_info_response/message.dart';

class UserInfoResponse {
  UserInfoResponse({this.message});

  factory UserInfoResponse.fromMap(Map<String, dynamic> data) {
    return UserInfoResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [UserInfoResponse].
  factory UserInfoResponse.fromJson(String data) {
    return UserInfoResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  Message? message;

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Converts [UserInfoResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
