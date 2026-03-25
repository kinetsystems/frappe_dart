import 'dart:convert';

/// Request model for canceling a document via frappe.client.cancel
class CancelDocRequest {
  CancelDocRequest({
    required this.doctype,
    required this.name,
  });

  factory CancelDocRequest.fromMap(Map<String, dynamic> data) =>
      CancelDocRequest(
        doctype: data['doctype'] as String,
        name: data['name'] as String,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [CancelDocRequest].
  factory CancelDocRequest.fromJson(String data) {
    return CancelDocRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// The doctype of the document
  String doctype;

  /// The name (id) of the document
  String name;

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
        'name': name,
      };

  /// `dart:convert`
  ///
  /// Converts [CancelDocRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
