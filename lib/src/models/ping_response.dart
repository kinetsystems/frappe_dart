import 'dart:convert';

class PingResponse {
  String? message;

  PingResponse({this.message});

  factory PingResponse.fromMap(Map<String, dynamic> data) => PingResponse(
        message: data['message'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PingResponse].
  factory PingResponse.fromJson(String data) {
    return PingResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [PingResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
