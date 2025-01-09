import 'dart:convert';

class Message {
  Message({this.user, this.userType});

  factory Message.fromMap(Map<String, dynamic> data) => Message(
        user: data['user'] as String?,
        userType: data['user_type'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Message].
  factory Message.fromJson(String data) {
    return Message.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? user;
  String? userType;

  Map<String, dynamic> toMap() => {
        'user': user,
        'user_type': userType,
      };

  /// `dart:convert`
  ///
  /// Converts [Message] to a JSON string.
  String toJson() => json.encode(toMap());
}
