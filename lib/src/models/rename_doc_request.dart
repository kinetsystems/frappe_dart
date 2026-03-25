import 'dart:convert';

/// Request model for renaming a document via frappe.client.rename_doc
class RenameDocRequest {
  RenameDocRequest({
    required this.doctype,
    required this.oldName,
    required this.newName,
    this.merge,
  });

  factory RenameDocRequest.fromMap(Map<String, dynamic> data) =>
      RenameDocRequest(
        doctype: data['doctype'] as String,
        oldName: data['old_name'] as String,
        newName: data['new_name'] as String,
        merge: data['merge'] as bool?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [RenameDocRequest].
  factory RenameDocRequest.fromJson(String data) {
    return RenameDocRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// The doctype of the document
  String doctype;

  /// Current name of the document
  String oldName;

  /// New name for the document
  String newName;

  /// Whether to merge if new name exists
  bool? merge;

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
        'old_name': oldName,
        'new_name': newName,
        if (merge != null) 'merge': merge,
      };

  /// `dart:convert`
  ///
  /// Converts [RenameDocRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
