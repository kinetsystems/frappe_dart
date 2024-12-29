import 'dart:convert';

class NumberCardResponse {
  int? message;

  NumberCardResponse({this.message});

  factory NumberCardResponse.fromMap(Map<String, dynamic> data) {
    return NumberCardResponse(
      message: data['message'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NumberCardResponse].
  factory NumberCardResponse.fromJson(String data) {
    return NumberCardResponse.fromMap(
        json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NumberCardResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
