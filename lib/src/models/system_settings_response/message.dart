import 'dart:convert';

import 'defaults.dart';

class Message {
  List<String>? timezones;
  Defaults? defaults;

  Message({this.timezones, this.defaults});

  factory Message.fromMap(Map<String, dynamic> data) => Message(
        timezones: data['timezones'] as List<String>?,
        defaults: data['defaults'] == null
            ? null
            : Defaults.fromMap(data['defaults'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toMap() => {
        'timezones': timezones,
        'defaults': defaults?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Message].
  factory Message.fromJson(String data) {
    return Message.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Message] to a JSON string.
  String toJson() => json.encode(toMap());
}
