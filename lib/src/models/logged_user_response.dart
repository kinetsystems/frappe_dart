import 'dart:convert';

class LoggedUserResponse {
  LoggedUserResponse({this.message});

  factory LoggedUserResponse.fromMap(Map<String, dynamic> data) {
    return LoggedUserResponse(
      message: data['message'] as String?,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LoggedUserResponse].
  factory LoggedUserResponse.fromJson(String data) {
    return LoggedUserResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }
  String? message;

  Map<String, dynamic> toMap() => {
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Converts [LoggedUserResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
