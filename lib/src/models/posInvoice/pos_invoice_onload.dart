import 'dart:convert';

import 'package:equatable/equatable.dart';

class PosInvoiceOnload extends Equatable {
  const PosInvoiceOnload({this.makePaymentViaJournalEntry});

  factory PosInvoiceOnload.fromMap(Map<String, dynamic> data) =>
      PosInvoiceOnload(
        makePaymentViaJournalEntry:
            data['make_payment_via_journal_entry'] as int?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PosInvoiceOnload].
  factory PosInvoiceOnload.fromJson(String data) {
    return PosInvoiceOnload.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final int? makePaymentViaJournalEntry;

  Map<String, dynamic> toMap() => {
        'make_payment_via_journal_entry': makePaymentViaJournalEntry,
      };

  /// `dart:convert`
  ///
  /// Converts [PosInvoiceOnload] to a JSON string.
  String toJson() => json.encode(toMap());

  PosInvoiceOnload copyWith({
    int? makePaymentViaJournalEntry,
  }) {
    return PosInvoiceOnload(
      makePaymentViaJournalEntry:
          makePaymentViaJournalEntry ?? this.makePaymentViaJournalEntry,
    );
  }

  @override
  List<Object?> get props => [makePaymentViaJournalEntry];
}
