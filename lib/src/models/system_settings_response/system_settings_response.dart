import 'dart:convert';

import 'message.dart';

class SystemSettingsResponse {
  Message? message;

  SystemSettingsResponse({this.message});

  factory SystemSettingsResponse.fromMap(Map<String, dynamic> data) {
    return SystemSettingsResponse(
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
  /// Parses the string and returns the resulting Json object as [SystemSettingsResponse].
  factory SystemSettingsResponse.fromJson(String data) {
    return SystemSettingsResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }

  /// `dart:convert`
  ///
  /// Converts [SystemSettingsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
