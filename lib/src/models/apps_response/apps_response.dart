import 'dart:convert';

import 'message.dart';

class AppsResponse {
  List<Message>? message;

  AppsResponse({this.message});

  factory AppsResponse.fromMap(Map<String, dynamic> data) => AppsResponse(
        message: (data['message'] as List<dynamic>?)
            ?.map((e) => Message.fromMap(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toMap() => {
        'message': message?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [AppsResponse].
  factory AppsResponse.fromJson(String data) {
    return AppsResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [AppsResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
