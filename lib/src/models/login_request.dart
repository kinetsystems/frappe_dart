import 'package:equatable/equatable.dart';

class LoginRequest {
  LoginRequest({
    this.usr,
    this.pwd,
    this.cmd,
    this.otp,
    this.tmpId,
    this.device,
  });

  factory LoginRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      LoginRequest(
        usr: json['usr'] as String?,
        pwd: json['pwd'] as String?,
        cmd: json['cmd'] as String?,
        otp: json['otp'] as String?,
        tmpId: json['tmp_id'] as String?,
        device: json['device'] as String?,
      );

  Map<String, dynamic> toJson() => {
        if (usr != null) 'usr': usr,
        if (pwd != null) 'pwd': pwd,
        if (cmd != null) 'cmd': cmd,
        if (otp != null) 'otp': otp,
        if (tmpId != null) 'tmp_id': tmpId,
        if (device != null) 'device': device,
      };

  final String? usr;
  final String? pwd;
  final String? cmd;
  final String? otp;
  final String? tmpId;
  final String? device;
}
