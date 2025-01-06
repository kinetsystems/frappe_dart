
class LoginResponse {
  LoginResponse({
    this.message,
    this.homePage,
    this.fullName,
    this.userId,
    this.cookie,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        message: json['message'] as String?,
        homePage: json['home_page'] as String?,
        fullName: json['full_name'] as String?,
        userId: json['user_id'] as String?,
        cookie: json['cookie'] as String?,
      );

  final String? fullName;
  final String? homePage;
  final String? message;
  final String? userId;
  final String? cookie;

  Map<String, dynamic> toJson() => {
        'message': message,
        'home_page': homePage,
        'full_name': fullName,
        'user_id': userId,
        'cookie': cookie,
      };
}
