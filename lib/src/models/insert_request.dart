import 'dart:convert';

/// Request model for inserting a document via frappe.client.insert
class InsertRequest {
  InsertRequest({
    required this.doc,
  });

  factory InsertRequest.fromMap(Map<String, dynamic> data) => InsertRequest(
        doc: data['doc'] as Map<String, dynamic>,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [InsertRequest].
  factory InsertRequest.fromJson(String data) {
    return InsertRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// The document to insert, must include 'doctype' field
  Map<String, dynamic> doc;

  Map<String, dynamic> toMap() => {
        'doc': json.encode(doc),
      };

  /// `dart:convert`
  ///
  /// Converts [InsertRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
