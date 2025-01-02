import 'dart:convert';

class LoginRequest {
  String? usr;
  String? pwd;

  LoginRequest({this.usr, this.pwd});

  factory LoginRequest.fromMap(Map<String, dynamic> data) => LoginRequest(
        usr: data['usr'] as String?,
        pwd: data['pwd'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'usr': usr,
        'pwd': pwd,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LoginRequest].
  factory LoginRequest.fromJson(String data) {
    return LoginRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [LoginRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
