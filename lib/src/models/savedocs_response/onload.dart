import 'dart:convert';

class Onload {
  const Onload({this.makePaymentViaJournalEntry});

  factory Onload.fromMap(Map<String, dynamic> data) => Onload(
        makePaymentViaJournalEntry:
            data['make_payment_via_journal_entry'] as int?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Onload].
  factory Onload.fromJson(String data) {
    return Onload.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final int? makePaymentViaJournalEntry;

  Map<String, dynamic> toMap() => {
        'make_payment_via_journal_entry': makePaymentViaJournalEntry,
      };

  /// `dart:convert`
  ///
  /// Converts [Onload] to a JSON string.
  String toJson() => json.encode(toMap());
}
