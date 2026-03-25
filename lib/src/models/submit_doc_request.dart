import 'dart:convert';

/// Request model for submitting a document via frappe.client.submit
class SubmitDocRequest {
  SubmitDocRequest({
    required this.doc,
  });

  factory SubmitDocRequest.fromMap(Map<String, dynamic> data) =>
      SubmitDocRequest(
        doc: data['doc'] as Map<String, dynamic>,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SubmitDocRequest].
  factory SubmitDocRequest.fromJson(String data) {
    return SubmitDocRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// The document to submit, must include 'doctype' and 'name' fields
  Map<String, dynamic> doc;

  Map<String, dynamic> toMap() => {
        'doc': json.encode(doc),
      };

  /// `dart:convert`
  ///
  /// Converts [SubmitDocRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
