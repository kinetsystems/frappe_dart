import 'dart:convert';

class Message {
  String? user;
  String? userType;

  Message({this.user, this.userType});

  factory Message.fromMap(Map<String, dynamic> data) => Message(
        user: data['user'] as String?,
        userType: data['user_type'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'user': user,
        'user_type': userType,
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
