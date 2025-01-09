import 'dart:convert';

class Message {
  String? name;
  String? logo;
  String? title;
  String? route;

  Message({this.name, this.logo, this.title, this.route});

  factory Message.fromMap(Map<String, dynamic> data) => Message(
        name: data['name'] as String?,
        logo: data['logo'] as String?,
        title: data['title'] as String?,
        route: data['route'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'logo': logo,
        'title': title,
        'route': route,
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
