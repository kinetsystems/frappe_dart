import 'dart:convert';

import 'package:frappe_dart/frappe_dart.dart';

import 'package:frappe_dart/src/models/get_versions_response/get_versions_response.dart';

import 'package:frappe_dart/src/models/models.dart';

import 'package:frappe_dart/src/models/get_versions_response/frappe_app.dart';

class Message {

  Message({
    required this.frappeApps,
  });

  factory Message.fromMap(Map<String, dynamic> data) {
    final frappeApps = <String, FrappeApp>{};
    data.forEach((key, value) {
      frappeApps[key] = FrappeApp.fromMap(value as Map<String, dynamic>);
    });
    return Message(
      frappeApps: frappeApps,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetVersionsResponse].
  factory Message.fromJson(String data) {
    return Message.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  Map<String, FrappeApp> frappeApps = {};

  Map<String, dynamic> toMap() {
    final data = <String, dynamic>{};
    frappeApps.forEach((key, value) {
      data[key] = value.toMap();
    });
    return data;
  }

  /// `dart:convert`
  ///
  /// Converts [GetVersionsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
