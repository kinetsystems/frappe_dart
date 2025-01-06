import 'dart:convert';

import 'package:frappe_dart/src/models/system_settings_response/message.dart';

class SystemSettingsResponse {

  SystemSettingsResponse({this.message});

  factory SystemSettingsResponse.fromMap(Map<String, dynamic> data) {
    return SystemSettingsResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SystemSettingsResponse].
  factory SystemSettingsResponse.fromJson(String data) {
    return SystemSettingsResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }
  Message? message;

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Converts [SystemSettingsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
