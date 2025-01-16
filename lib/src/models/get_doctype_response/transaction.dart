import 'dart:convert';

class Transaction {
  Transaction({this.label, this.items});

  factory Transaction.fromMap(Map<String, dynamic> data) => Transaction(
        label: data['label'] as String?,
        items:
            (data['items'] as List<dynamic>?)?.map((e) => e as String).toList(),
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Transaction].
  factory Transaction.fromJson(String data) {
    return Transaction.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? label;
  List<String>? items;

  Map<String, dynamic> toMap() => {
        'label': label,
        'items': items,
      };

  /// `dart:convert`
  ///
  /// Converts [Transaction] to a JSON string.
  String toJson() => json.encode(toMap());
}
