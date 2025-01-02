import 'dart:convert';

import 'frappe_app.dart';

class Message {
  Map<String, FrappeApp> frappeApps = {};

  Message({
    required this.frappeApps,
  });

  factory Message.fromMap(Map<String, dynamic> data) {
    final Map<String, FrappeApp> frappeApps = {};
    data.forEach((key, value) {
      frappeApps[key] = FrappeApp.fromMap(value as Map<String, dynamic>);
    });
    return Message(
      frappeApps: frappeApps,
    );
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    frappeApps.forEach((key, value) {
      data[key] = value.toMap();
    });
    return data;
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetVersionsResponse].
  factory Message.fromJson(String data) {
    return Message.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GetVersionsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
