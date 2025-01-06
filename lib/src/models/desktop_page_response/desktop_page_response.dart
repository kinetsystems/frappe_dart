import 'dart:convert';

import 'package:frappe_dart/src/models/desktop_page_response/message.dart';

class DesktopPageResponse {
  DesktopPageResponse({this.message});

  factory DesktopPageResponse.fromMap(Map<String, dynamic> data) {
    return DesktopPageResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DesktopPageResponse].
  factory DesktopPageResponse.fromJson(String data) {
    return DesktopPageResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }
  Message? message;

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Converts [DesktopPageResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
