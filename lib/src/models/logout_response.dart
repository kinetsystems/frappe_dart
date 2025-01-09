import 'dart:convert';

class LogoutResponse {
  LogoutResponse({this.message, this.homePage, this.fullName});

  factory LogoutResponse.fromMap(Map<String, dynamic> data) {
    return LogoutResponse(
      message: data['message'] as String?,
      homePage: data['home_page'] as String?,
      fullName: data['full_name'] as String?,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LogoutResponse].
  factory LogoutResponse.fromJson(String data) {
    return LogoutResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? message;
  String? homePage;
  String? fullName;

  Map<String, dynamic> toMap() => {
        'message': message,
        'home_page': homePage,
        'full_name': fullName,
      };

  /// `dart:convert`
  ///
  /// Converts [LogoutResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
