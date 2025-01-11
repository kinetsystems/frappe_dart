import 'dart:convert';

import 'message.dart';

class SearchLinkResponse {
  List<Message>? message;

  SearchLinkResponse({this.message});

  factory SearchLinkResponse.fromMap(Map<String, dynamic> data) {
    return SearchLinkResponse(
      message: (data['message'] as List<dynamic>?)
          ?.map((e) => Message.fromMap(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message?.map((e) => e.toMap()).toList(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SearchLinkResponse].
  factory SearchLinkResponse.fromJson(String data) {
    return SearchLinkResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [SearchLinkResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
