import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:frappe_dart/src/models/apps_response/message.dart';

class SendEmailResponse extends Equatable {
  const SendEmailResponse({this.message});

  factory SendEmailResponse.fromMap(Map<String, dynamic> data) {
    return SendEmailResponse(
      message: data['message'] == null
          ? null
          : Message.fromMap(data['message'] as Map<String, dynamic>),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SendEmailResponse].
  factory SendEmailResponse.fromJson(String data) {
    return SendEmailResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final Message? message;

  Map<String, dynamic> toMap() => {
        'message': message?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Converts [SendEmailResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  SendEmailResponse copyWith({
    Message? message,
  }) {
    return SendEmailResponse(
      message: message ?? this.message,
    );
  }

  @override
  List<Object?> get props => [message];
}
