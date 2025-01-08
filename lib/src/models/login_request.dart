import 'dart:convert';

class LoginRequest {
  LoginRequest({this.usr, this.pwd});

  factory LoginRequest.fromMap(Map<String, dynamic> data) => LoginRequest(
        usr: data['usr'] as String?,
        pwd: data['pwd'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [LoginRequest].
  factory LoginRequest.fromJson(String data) {
    return LoginRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? usr;
  String? pwd;

  Map<String, dynamic> toMap() => {
        'usr': usr,
        'pwd': pwd,
      };

  /// `dart:convert`
  ///
  /// Converts [LoginRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
