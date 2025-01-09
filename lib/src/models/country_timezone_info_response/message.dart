import 'dart:convert';

import 'package:frappe_dart/frappe_dart.dart';
import 'package:frappe_dart/src/models/country_timezone_info_response/country.dart';
import 'package:frappe_dart/src/models/get_versions_response/get_versions_response.dart';
import 'package:frappe_dart/src/models/models.dart';

class Message {
  Message({
    required this.countryInfo,
    required this.allTimezones,
  });

  factory Message.fromMap(Map<String, dynamic> data) {
    final countryInfo = <String, Country>{};
    data.forEach((key, value) {
      countryInfo[key] = Country.fromMap(value as Map<String, dynamic>);
    });
    return Message(
      countryInfo: countryInfo,
      allTimezones: data['all_timezones'] as List<String>?,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetVersionsResponse].
  factory Message.fromJson(String data) {
    return Message.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  Map<String, Country> countryInfo = {};
  List<String>? allTimezones;

  Map<String, dynamic> toMap() {
    final data = <String, dynamic>{};
    countryInfo.forEach((key, value) {
      data[key] = value.toMap();
    });
    data['all_timezones'] = allTimezones;
    return data;
  }

  /// `dart:convert`
  ///
  /// Converts [GetVersionsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
