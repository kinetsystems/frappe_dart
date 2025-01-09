import 'dart:convert';

import 'package:frappe_dart/src/models/country_timezone_info_response/message.dart';

class CountryTimezoneInfoResponse {
  CountryTimezoneInfoResponse({this.message});

  factory CountryTimezoneInfoResponse.fromMap(Map<String, dynamic> data) {
    return CountryTimezoneInfoResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CountryTimezoneInfoResponse].
  factory CountryTimezoneInfoResponse.fromJson(String data) {
    return CountryTimezoneInfoResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }
  Message? message;

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Converts [CountryTimezoneInfoResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
