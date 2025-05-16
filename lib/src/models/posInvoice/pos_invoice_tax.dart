import 'dart:convert';

import 'package:equatable/equatable.dart';

class PosInvoiceTax extends Equatable {
  const PosInvoiceTax({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.chargeType,
    this.rowId,
    this.accountHead,
    this.description,
    this.includedInPrintRate,
    this.includedInPaidAmount,
    this.costCenter,
    this.rate,
    this.accountCurrency,
    this.taxAmount,
    this.total,
    this.taxAmountAfterDiscountAmount,
    this.baseTaxAmount,
    this.baseTotal,
    this.baseTaxAmountAfterDiscountAmount,
    this.itemWiseTaxDetail,
    this.dontRecomputeTax,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
    this.islocal,
    this.unsaved,
    this.customTaxId,
  });

  factory PosInvoiceTax.fromMap(Map<String, dynamic> data) => PosInvoiceTax(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        chargeType: data['charge_type'] as String?,
        rowId: data['row_id'] as dynamic,
        accountHead: data['account_head'] as String?,
        description: data['description'] as String?,
        includedInPrintRate: data['included_in_print_rate'] as int?,
        includedInPaidAmount: data['included_in_paid_amount'] as int?,
        costCenter: data['cost_center'] as String?,
        rate: (data['rate'] as num).toDouble(),
        accountCurrency: data['account_currency'] as dynamic,
        taxAmount: (data['tax_amount'] as num).toDouble(),
        total: (data['total'] as num).toDouble(),
        taxAmountAfterDiscountAmount:
            (data['tax_amount_after_discount_amount'] as num).toDouble(),
        baseTaxAmount: (data['base_tax_amount'] as num).toDouble(),
        baseTotal: (data['base_total'] as num).toDouble(),
        baseTaxAmountAfterDiscountAmount:
            (data['base_tax_amount_after_discount_amount'] as num).toDouble(),
        dontRecomputeTax: data['dont_recompute_tax'] as int?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
        islocal: data['__islocal'] as int?,
        unsaved: data['__unsaved'] as int?,
        customTaxId: data['custom_tax_id'] as int?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PosInvoiceTax].
  factory PosInvoiceTax.fromJson(String data) {
    return PosInvoiceTax.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final String? name;
  final String? owner;
  final String? creation;
  final String? modified;
  final String? modifiedBy;
  final int? docstatus;
  final int? idx;
  final String? chargeType;
  final dynamic rowId;
  final String? accountHead;
  final String? description;
  final int? includedInPrintRate;
  final int? includedInPaidAmount;
  final String? costCenter;
  final double? rate;
  final dynamic accountCurrency;
  final double? taxAmount;
  final double? total;
  final double? taxAmountAfterDiscountAmount;
  final double? baseTaxAmount;
  final double? baseTotal;
  final double? baseTaxAmountAfterDiscountAmount;
  final String? itemWiseTaxDetail;
  final int? dontRecomputeTax;
  final String? parent;
  final String? parentfield;
  final String? parenttype;
  final String? doctype;
  final int? islocal;
  final int? unsaved;
  final int? customTaxId;

  Map<String, dynamic> toMap() => {
        if (name != null) 'name': name,
        if (owner != null) 'owner': owner,
        if (creation != null) 'creation': creation,
        if (modified != null) 'modified': modified,
        if (modifiedBy != null) 'modified_by': modifiedBy,
        if (docstatus != null) 'docstatus': docstatus,
        if (idx != null) 'idx': idx,
        if (chargeType != null) 'charge_type': chargeType,
        if (rowId != null) 'row_id': rowId,
        if (accountHead != null) 'account_head': accountHead,
        if (description != null) 'description': description,
        if (includedInPrintRate != null)
          'included_in_print_rate': includedInPrintRate,
        if (includedInPaidAmount != null)
          'included_in_paid_amount': includedInPaidAmount,
        if (costCenter != null) 'cost_center': costCenter,
        if (rate != null) 'rate': rate,
        if (accountCurrency != null) 'account_currency': accountCurrency,
        if (taxAmount != null) 'tax_amount': taxAmount,
        if (total != null) 'total': total,
        if (taxAmountAfterDiscountAmount != null)
          'tax_amount_after_discount_amount': taxAmountAfterDiscountAmount,
        if (baseTaxAmount != null) 'base_tax_amount': baseTaxAmount,
        if (baseTotal != null) 'base_total': baseTotal,
        if (baseTaxAmountAfterDiscountAmount != null)
          'base_tax_amount_after_discount_amount':
              baseTaxAmountAfterDiscountAmount,
        if (itemWiseTaxDetail != null)
          'item_wise_tax_detail': itemWiseTaxDetail,
        if (dontRecomputeTax != null) 'dont_recompute_tax': dontRecomputeTax,
        if (parent != null) 'parent': parent,
        if (parentfield != null) 'parentfield': parentfield,
        if (parenttype != null) 'parenttype': parenttype,
        if (doctype != null) 'doctype': doctype,
        if (islocal != null) '__islocal': islocal,
        if (unsaved != null) '__unsaved': unsaved,
        if (customTaxId != null) 'custom_tax_id': customTaxId,
      };

  /// `dart:convert`
  ///
  /// Converts [PosInvoiceTax] to a JSON string.
  String toJson() => json.encode(toMap());

  PosInvoiceTax copyWith({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    String? modifiedBy,
    int? docstatus,
    int? idx,
    String? chargeType,
    dynamic rowId,
    String? accountHead,
    String? description,
    int? includedInPrintRate,
    int? includedInPaidAmount,
    String? costCenter,
    double? rate,
    dynamic accountCurrency,
    double? taxAmount,
    double? total,
    double? taxAmountAfterDiscountAmount,
    double? baseTaxAmount,
    double? baseTotal,
    double? baseTaxAmountAfterDiscountAmount,
    String? itemWiseTaxDetail,
    int? dontRecomputeTax,
    String? parent,
    String? parentfield,
    String? parenttype,
    String? doctype,
    int? islocal,
    int? unsaved,
    int? customTaxId,
  }) {
    return PosInvoiceTax(
      name: name ?? this.name,
      owner: owner ?? this.owner,
      creation: creation ?? this.creation,
      modified: modified ?? this.modified,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      docstatus: docstatus ?? this.docstatus,
      idx: idx ?? this.idx,
      chargeType: chargeType ?? this.chargeType,
      rowId: rowId ?? this.rowId,
      accountHead: accountHead ?? this.accountHead,
      description: description ?? this.description,
      includedInPrintRate: includedInPrintRate ?? this.includedInPrintRate,
      includedInPaidAmount: includedInPaidAmount ?? this.includedInPaidAmount,
      costCenter: costCenter ?? this.costCenter,
      rate: rate ?? this.rate,
      accountCurrency: accountCurrency ?? this.accountCurrency,
      taxAmount: taxAmount ?? this.taxAmount,
      total: total ?? this.total,
      taxAmountAfterDiscountAmount:
          taxAmountAfterDiscountAmount ?? this.taxAmountAfterDiscountAmount,
      baseTaxAmount: baseTaxAmount ?? this.baseTaxAmount,
      baseTotal: baseTotal ?? this.baseTotal,
      baseTaxAmountAfterDiscountAmount: baseTaxAmountAfterDiscountAmount ??
          this.baseTaxAmountAfterDiscountAmount,
      itemWiseTaxDetail: itemWiseTaxDetail ?? this.itemWiseTaxDetail,
      dontRecomputeTax: dontRecomputeTax ?? this.dontRecomputeTax,
      parent: parent ?? this.parent,
      parentfield: parentfield ?? this.parentfield,
      parenttype: parenttype ?? this.parenttype,
      doctype: doctype ?? this.doctype,
      islocal: islocal ?? this.islocal,
      unsaved: unsaved ?? this.unsaved,
      customTaxId: customTaxId ?? this.customTaxId,
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
      chargeType,
      rowId,
      accountHead,
      description,
      includedInPrintRate,
      includedInPaidAmount,
      costCenter,
      rate,
      accountCurrency,
      taxAmount,
      total,
      taxAmountAfterDiscountAmount,
      baseTaxAmount,
      baseTotal,
      baseTaxAmountAfterDiscountAmount,
      itemWiseTaxDetail,
      dontRecomputeTax,
      parent,
      parentfield,
      parenttype,
      doctype,
      islocal,
      unsaved,
      customTaxId,
    ];
  }
}
