import 'dart:convert';

enum Action { Save, Submit, Update, Cancel }

class SavedocsRequest {
  SavedocsRequest({
    required this.doc,
    required this.action,
  });

  factory SavedocsRequest.fromMap(Map<String, dynamic> data) {
    return SavedocsRequest(
      doc: json.decode(data['doc'] as String) as Map<String, dynamic>,
      action: Action.values.firstWhere(
        (e) => e.toString().split('.').last == data['action'],
      ),
    );
  }

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [SavedocsRequest].
  factory SavedocsRequest.fromJson(String data) {
    return SavedocsRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  Map<String, dynamic> doc;
  Action action;

  Map<String, dynamic> toMap() => {
        'doc': json.encode(doc),
        'action': action.toString().split('.').last,
      };

  /// `dart:convert`
  ///
  /// Converts [SavedocsRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}
