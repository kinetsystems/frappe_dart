import 'dart:convert';

class DeleteDocRequest {
  DeleteDocRequest({
    required this.doctype,
    required this.name,
  });

  factory DeleteDocRequest.fromMap(Map<String, dynamic> data) =>
      DeleteDocRequest(
        doctype: data['doctype'] as String,
        name: data['name'] as String,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [DeleteDocRequest].
  factory DeleteDocRequest.fromJson(String data) {
    return DeleteDocRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String doctype;
  String name;

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
        'name': name,
      };

  /// `dart:convert`
  ///
  /// Converts [DeleteDocRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
