import 'package:equatable/equatable.dart';

class LoginResponse {
  LoginResponse({
    this.message,
    this.homePage,
    this.fullName,
    this.userId,
    this.cookie,
    this.verification,
    this.tmpId,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        message: json['message'] as String?,
        homePage: json['home_page'] as String?,
        fullName: json['full_name'] as String?,
        userId: json['user_id'] as String?,
        cookie: json['cookie'] as String?,
        verification: json['verification'] != null
            ? Verification.fromJson(
                json['verification'] as Map<String, dynamic>,
              )
            : null,
        tmpId: json['tmp_id'] as String?,
      );

  final String? fullName;
  final String? homePage;
  final String? message;
  final String? tmpId;
  final String? userId;
  final String? cookie;
  final Verification? verification;

  Map<String, dynamic> toJson() => {
        'message': message,
        'home_page': homePage,
        'full_name': fullName,
        'user_id': userId,
        'cookie': cookie,
        'verification': verification?.toJson(),
        'tmp_id': tmpId,
      };
}

class Verification {
  Verification({
    this.tokenDelivery,
    this.prompt,
    this.method,
    this.setup,
  });

  factory Verification.fromJson(Map<String, dynamic> json) => Verification(
        tokenDelivery: json['token_delivery'] as bool?,
        prompt: json['prompt'] as String?,
        method: json['method'] as String?,
        setup: json['setup'] as bool?,
      );

  final String? method;
  final String? prompt;
  final bool? setup;
  final bool? tokenDelivery;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['token_delivery'] = tokenDelivery;
    data['prompt'] = prompt;
    data['method'] = method;
    data['setup'] = setup;
    return data;
  }
}
