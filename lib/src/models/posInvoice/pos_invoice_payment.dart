import 'dart:convert';

import 'package:equatable/equatable.dart';

class PosInvoicePayment extends Equatable {
  const PosInvoicePayment({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.modeOfPayment,
    this.amount,
    this.referenceNo,
    this.account,
    this.type,
    this.baseAmount,
    this.clearanceDate,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
    this.islocal,
    this.unsaved,
    this.isDefault,
    this.customPaymentId,
  });

  factory PosInvoicePayment.fromMap(Map<String, dynamic> data) =>
      PosInvoicePayment(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        modeOfPayment: data['mode_of_payment'] as String?,
        amount: (data['amount'] as num).toDouble(),
        referenceNo: data['reference_no'] as dynamic,
        account: data['account'] as String?,
        type: data['type'] as String?,
        baseAmount: (data['base_amount'] as num).toDouble(),
        clearanceDate: data['clearance_date'] as dynamic,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
        islocal: data['__islocal'] as int?,
        unsaved: data['__unsaved'] as int?,
        isDefault: data['default'] as int?,
        customPaymentId: data['custom_payment_id'] as int?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PosInvoicePayment].
  factory PosInvoicePayment.fromJson(String data) {
    return PosInvoicePayment.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final String? name;
  final String? owner;
  final String? creation;
  final String? modified;
  final String? modifiedBy;
  final int? docstatus;
  final int? idx;
  final String? modeOfPayment;
  final double? amount;
  final dynamic referenceNo;
  final String? account;
  final String? type;
  final double? baseAmount;
  final dynamic clearanceDate;
  final String? parent;
  final String? parentfield;
  final String? parenttype;
  final String? doctype;
  final int? islocal;
  final int? unsaved;
  final int? isDefault;
  final int? customPaymentId;

  Map<String, dynamic> toMap() => {
        if (name != null) 'name': name,
        if (owner != null) 'owner': owner,
        if (creation != null) 'creation': creation,
        if (modified != null) 'modified': modified,
        if (modifiedBy != null) 'modified_by': modifiedBy,
        if (docstatus != null) 'docstatus': docstatus,
        if (idx != null) 'idx': idx,
        if (modeOfPayment != null) 'mode_of_payment': modeOfPayment,
        if (amount != null) 'amount': amount,
        if (referenceNo != null) 'reference_no': referenceNo,
        if (account != null) 'account': account,
        if (type != null) 'type': type,
        if (baseAmount != null) 'base_amount': baseAmount,
        if (clearanceDate != null) 'clearance_date': clearanceDate,
        if (parent != null) 'parent': parent,
        if (parentfield != null) 'parentfield': parentfield,
        if (parenttype != null) 'parenttype': parenttype,
        if (doctype != null) 'doctype': doctype,
        if (islocal != null) '__islocal': islocal,
        if (unsaved != null) '__unsaved': unsaved,
        if (isDefault != null) 'default': isDefault,
        if (customPaymentId != null) 'custom_payment_id': customPaymentId,
      };

  /// `dart:convert`
  ///
  /// Converts [PosInvoicePayment] to a JSON string.
  String toJson() => json.encode(toMap());

  PosInvoicePayment copyWith({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    String? modifiedBy,
    int? docstatus,
    int? idx,
    String? modeOfPayment,
    double? amount,
    dynamic referenceNo,
    String? account,
    String? type,
    double? baseAmount,
    dynamic clearanceDate,
    String? parent,
    String? parentfield,
    String? parenttype,
    String? doctype,
    int? islocal,
    int? unsaved,
    int? isDefault,
    int? customPaymentId,
  }) {
    return PosInvoicePayment(
      name: name ?? this.name,
      owner: owner ?? this.owner,
      creation: creation ?? this.creation,
      modified: modified ?? this.modified,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      docstatus: docstatus ?? this.docstatus,
      idx: idx ?? this.idx,
      modeOfPayment: modeOfPayment ?? this.modeOfPayment,
      amount: amount ?? this.amount,
      referenceNo: referenceNo ?? this.referenceNo,
      account: account ?? this.account,
      type: type ?? this.type,
      baseAmount: baseAmount ?? this.baseAmount,
      clearanceDate: clearanceDate ?? this.clearanceDate,
      parent: parent ?? this.parent,
      parentfield: parentfield ?? this.parentfield,
      parenttype: parenttype ?? this.parenttype,
      doctype: doctype ?? this.doctype,
      islocal: islocal ?? this.islocal,
      unsaved: unsaved ?? this.unsaved,
      isDefault: isDefault ?? this.isDefault,
      customPaymentId: customPaymentId ?? this.customPaymentId,
    );
  }

  @override
  List<Object?> get props {
    return [
      name,
      owner,
      creation,
      modified,
      modifiedBy,
      docstatus,
      idx,
      modeOfPayment,
      amount,
      referenceNo,
      account,
      type,
      baseAmount,
      clearanceDate,
      parent,
      parentfield,
      parenttype,
      doctype,
      islocal,
      unsaved,
      isDefault,
      customPaymentId,
    ];
  }
}
