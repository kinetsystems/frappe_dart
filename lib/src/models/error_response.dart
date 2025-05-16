import 'dart:convert';

import 'package:equatable/equatable.dart';

class ErrorResponse {
  const ErrorResponse({
    this.exception,
    this.excType,
    this.exc,
    this.serverMessages,
  });

  factory ErrorResponse.fromMap(Map<String, dynamic> data) => ErrorResponse(
        exception: data['exception'] as String?,
        excType: data['exc_type'] as String?,
        exc: data['exc'] as String?,
        serverMessages: data['_server_messages'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ErrorResponse].
  factory ErrorResponse.fromJson(String data) {
    return ErrorResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final String? exception;
  final String? excType;
  final String? exc;
  final String? serverMessages;

  Map<String, dynamic> toMap() => {
        'exception': exception,
        'exc_type': excType,
        'exc': exc,
        '_server_messages': serverMessages,
      };

  /// `dart:convert`
  ///
  /// Converts [ErrorResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  List<Object?> get props => [exception, excType, exc, serverMessages];
}
