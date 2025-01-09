import 'dart:convert';

class LoggedUserResponse {
  String? message;

  LoggedUserResponse({this.message});

  factory LoggedUserResponse.fromMap(Map<String, dynamic> data) {
    return LoggedUserResponse(
      message: data['message'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LoggedUserResponse].
  factory LoggedUserResponse.fromJson(String data) {
    return LoggedUserResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [LoggedUserResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
