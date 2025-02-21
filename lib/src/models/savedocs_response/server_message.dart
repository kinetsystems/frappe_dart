import 'dart:convert';

class ServerMessage {
  const ServerMessage({
    this.message,
    this.title,
    this.indicator,
    this.alert,
  });

  factory ServerMessage.fromMap(Map<String, dynamic> data) => ServerMessage(
        message: data['message'] as String?,
        title: data['title'] as String?,
        indicator: data['indicator'] as String?,
        alert: data['alert'] as int?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ServerMessage].
  factory ServerMessage.fromJson(String data) {
    return ServerMessage.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final String? message;
  final String? title;
  final String? indicator;
  final int? alert;

  Map<String, dynamic> toMap() => {
        'message': message,
        'title': title,
        'indicator': indicator,
        'alert': alert,
      };

  /// `dart:convert`
  ///
  /// Converts [ServerMessage] to a JSON string.
  String toJson() => json.encode(toMap());
}
