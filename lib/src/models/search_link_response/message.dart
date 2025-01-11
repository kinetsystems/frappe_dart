import 'dart:convert';

class Message {
  String? value;
  String? description;

  Message({this.value, this.description});

  factory Message.fromMap(Map<String, dynamic> data) => Message(
        value: data['value'] as String?,
        description: data['description'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'value': value,
        'description': description,
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
