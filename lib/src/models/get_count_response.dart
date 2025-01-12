import 'dart:convert';

class GetCountResponse {
  int? message;

  GetCountResponse({this.message});

  factory GetCountResponse.fromMap(Map<String, dynamic> data) {
    return GetCountResponse(
      message: data['message'] as int?,
    );
  }

  Map<String, dynamic> toMap() => {
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [GetCountResponse].
  factory GetCountResponse.fromJson(String data) {
    return GetCountResponse.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [GetCountResponse] to a JSON string.
  String toJson() => json.encode(toMap());
}
