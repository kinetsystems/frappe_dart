import 'dart:convert';

class NumberCardResponse {
  NumberCardResponse({this.message});

  factory NumberCardResponse.fromMap(Map<String, dynamic> data) {
    return NumberCardResponse(
      message: data['message'] as double?,
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NumberCardResponse].
  factory NumberCardResponse.fromJson(String data) {
    return NumberCardResponse.fromMap(
      json.decode(data) as Map<String, dynamic>,
    );
  }
  double? message;

  Map<String, dynamic> toMap() => {
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Converts [NumberCardResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
