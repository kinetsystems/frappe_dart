import 'dart:convert';

class NumberCardPercentageDifferenceResponse {

  NumberCardPercentageDifferenceResponse({this.message});

  factory NumberCardPercentageDifferenceResponse.fromMap(
      Map<String, dynamic> data,) {
    return NumberCardPercentageDifferenceResponse(
      message: (data['message'] as num?)?.toDouble(),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NumberCardPercentageDifferenceResponse].
  factory NumberCardPercentageDifferenceResponse.fromJson(String data) {
    return NumberCardPercentageDifferenceResponse.fromMap(
        json.decode(data) as Map<String, dynamic>,);
  }
  double? message;

  Map<String, dynamic> toMap() => {
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Converts [NumberCardPercentageDifferenceResponse] to a JSON string.
  String toJson() => json.encode(toMap());

  NumberCardPercentageDifferenceResponse copyWith({
    double? message,
  }) {
    return NumberCardPercentageDifferenceResponse(
      message: message ?? this.message,
    );
  }
}
