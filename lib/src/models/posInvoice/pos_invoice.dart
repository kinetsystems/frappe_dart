import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:frappe_dart/src/models/posInvoice/pos_invoice_item.dart';
import 'package:frappe_dart/src/models/posInvoice/pos_invoice_onload.dart';
import 'package:frappe_dart/src/models/posInvoice/pos_invoice_payment.dart';
import 'package:frappe_dart/src/models/posInvoice/pos_invoice_tax.dart';

class PosInvoice extends Equatable {
  const PosInvoice({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.title,
    this.namingSeries,
    this.customer,
    this.customerName,
    this.taxId,
    this.posProfile,
    this.consolidatedInvoice,
    this.isPos,
    this.isReturn,
    this.customApplyTds,
    this.customTaxWithholdingCategory,
    this.customMrc,
    this.customFiscalNo,
    this.updateBilledAmountInSalesOrder,
    this.updateBilledAmountInDeliveryNote,
    this.company,
    this.postingDate,
    this.postingTime,
    this.setPostingTime,
    this.dueDate,
    this.amendedFrom,
    this.returnAgainst,
    this.project,
    this.costCenter,
    this.poNo,
    this.poDate,
    this.customerAddress,
    this.addressDisplay,
    this.contactPerson,
    this.contactDisplay,
    this.contactMobile,
    this.contactEmail,
    this.territory,
    this.shippingAddressName,
    this.shippingAddress,
    this.companyAddress,
    this.companyAddressDisplay,
    this.companyContactPerson,
    this.currency,
    this.conversionRate,
    this.sellingPriceList,
    this.priceListCurrency,
    this.plcConversionRate,
    this.ignorePricingRule,
    this.setWarehouse,
    this.updateStock,
    this.scanBarcode,
    this.totalBillingAmount,
    this.totalQty,
    this.baseTotal,
    this.baseNetTotal,
    this.total,
    this.netTotal,
    this.totalNetWeight,
    this.taxesAndCharges,
    this.shippingRule,
    this.taxCategory,
    this.otherChargesCalculation,
    this.baseTotalTaxesAndCharges,
    this.totalTaxesAndCharges,
    this.loyaltyPoints,
    this.loyaltyAmount,
    this.redeemLoyaltyPoints,
    this.loyaltyProgram,
    this.loyaltyRedemptionAccount,
    this.loyaltyRedemptionCostCenter,
    this.couponCode,
    this.applyDiscountOn,
    this.baseDiscountAmount,
    this.additionalDiscountPercentage,
    this.discountAmount,
    this.baseGrandTotal,
    this.baseRoundingAdjustment,
    this.baseRoundedTotal,
    this.baseInWords,
    this.grandTotal,
    this.roundingAdjustment,
    this.roundedTotal,
    this.inWords,
    this.totalAdvance,
    this.outstandingAmount,
    this.allocateAdvancesAutomatically,
    this.paymentTermsTemplate,
    this.cashBankAccount,
    this.basePaidAmount,
    this.paidAmount,
    this.baseChangeAmount,
    this.changeAmount,
    this.accountForChangeAmount,
    this.writeOffAmount,
    this.baseWriteOffAmount,
    this.writeOffOutstandingAmountAutomatically,
    this.writeOffAccount,
    this.writeOffCostCenter,
    this.tcName,
    this.terms,
    this.letterHead,
    this.groupSameItems,
    this.language,
    this.selectPrintHeading,
    this.interCompanyInvoiceReference,
    this.customerGroup,
    this.campaign,
    this.isDiscounted,
    this.status,
    this.source,
    this.debitTo,
    this.partyAccountCurrency,
    this.isOpening,
    this.remarks,
    this.salesPartner,
    this.amountEligibleForCommission,
    this.commissionRate,
    this.totalCommission,
    this.fromDate,
    this.toDate,
    this.autoRepeat,
    this.againstIncomeAccount,
    this.doctype,
    this.items,
    this.allItemsSelected,
    this.taxes,
    this.timesheets,
    this.pricingRules,
    this.paymentSchedule,
    this.payments,
    this.advances,
    this.salesTeam,
    this.packedItems,
    this.onload,
    this.companyTaxId,
    this.companyVatRegistrationNumber,
    this.companyPhoneNumber,
    this.customFiscalContent,
  });

  factory PosInvoice.fromMap(Map<String, dynamic> data) => PosInvoice(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        title: data['title'] as String?,
        namingSeries: data['naming_series'] as String?,
        customer: data['customer'] as String?,
        customerName: data['customer_name'] as String?,
        taxId: data['tax_id'] as String?,
        posProfile: data['pos_profile'] as String?,
        consolidatedInvoice: data['consolidated_invoice'] as dynamic,
        isPos: data['is_pos'] as int?,
        isReturn: data['is_return'] != null ? data['is_return'] as int? : 0,
        customApplyTds: data['custom_apply_tds'] as int?,
        customTaxWithholdingCategory:
            data['custom_tax_withholding_category'] as String?,
        customMrc: data['custom_mrc'] as String?,
        customFiscalNo: data['custom_fiscal_no'] as String?,
        updateBilledAmountInSalesOrder:
            data['update_billed_amount_in_sales_order'] as int?,
        updateBilledAmountInDeliveryNote:
            data['update_billed_amount_in_delivery_note'] as int?,
        company: data['company'] as String?,
        postingDate: data['posting_date'] as String?,
        postingTime: data['posting_time'] as String?,
        setPostingTime: data['set_posting_time'] as int?,
        dueDate: data['due_date'] as String?,
        amendedFrom: data['amended_from'] as dynamic,
        returnAgainst: data['return_against'] as dynamic,
        project: data['project'] as dynamic,
        costCenter: data['cost_center'] as dynamic,
        poNo: data['po_no'] as dynamic,
        poDate: data['po_date'] as dynamic,
        customerAddress: data['customer_address'] as dynamic,
        addressDisplay: data['address_display'] as dynamic,
        contactPerson: data['contact_person'] as dynamic,
        contactDisplay: data['contact_display'] as dynamic,
        contactMobile: data['contact_mobile'] as dynamic,
        contactEmail: data['contact_email'] as dynamic,
        territory: data['territory'] as dynamic,
        shippingAddressName: data['shipping_address_name'] as dynamic,
        shippingAddress: data['shipping_address'] as dynamic,
        companyAddress: data['company_address'] as dynamic,
        companyAddressDisplay: data['company_address_display'] as dynamic,
        companyContactPerson: data['company_contact_person'] as dynamic,
        currency: data['currency'] as String?,
        conversionRate: data['conversion_rate'] != null
            ? (data['conversion_rate'] as num).toDouble()
            : null,
        sellingPriceList: data['selling_price_list'] as String?,
        priceListCurrency: data['price_list_currency'] as String?,
        plcConversionRate: data['plc_conversion_rate'] != null
            ? (data['plc_conversion_rate'] as num).toDouble()
            : null,
        ignorePricingRule: data['ignore_pricing_rule'] as int?,
        setWarehouse: data['set_warehouse'] as String?,
        updateStock: data['update_stock'] as int?,
        scanBarcode: data['scan_barcode'] as dynamic,
        totalBillingAmount: data['total_billing_amount'] != null
            ? (data['total_billing_amount'] as num).toDouble()
            : null,
        totalQty: data['total_qty'] != null
            ? (data['total_qty'] as num).toDouble()
            : null,
        baseTotal: data['base_total'] != null
            ? (data['base_total'] as num).toDouble()
            : null,
        baseNetTotal: data['base_net_total'] != null
            ? (data['base_net_total'] as num).toDouble()
            : null,
        total: data['total'] != null ? (data['total'] as num).toDouble() : null,
        netTotal: data['net_total'] != null
            ? (data['net_total'] as num).toDouble()
            : null,
        totalNetWeight: data['total_net_weight'] != null
            ? (data['total_net_weight'] as num).toDouble()
            : null,
        taxesAndCharges: data['taxes_and_charges'] as String?,
        shippingRule: data['shipping_rule'] as dynamic,
        taxCategory: data['tax_category'] as String?,
        otherChargesCalculation: data['other_charges_calculation'] as String?,
        baseTotalTaxesAndCharges: data['base_total_taxes_and_charges'] != null
            ? (data['base_total_taxes_and_charges'] as num).toDouble()
            : null,
        totalTaxesAndCharges: data['total_taxes_and_charges'] != null
            ? (data['total_taxes_and_charges'] as num).toDouble()
            : null,
        loyaltyPoints: data['loyalty_points'] != null
            ? (data['loyalty_points'] as num).toDouble()
            : null,
        loyaltyAmount: data['loyalty_amount'] != null
            ? (data['loyalty_amount'] as num).toDouble()
            : null,
        redeemLoyaltyPoints: data['redeem_loyalty_points'] as int?,
        loyaltyProgram: data['loyalty_program'] as dynamic,
        loyaltyRedemptionAccount: data['loyalty_redemption_account'] as dynamic,
        loyaltyRedemptionCostCenter:
            data['loyalty_redemption_cost_center'] as dynamic,
        couponCode: data['coupon_code'] as dynamic,
        applyDiscountOn: data['apply_discount_on'] as String?,
        baseDiscountAmount: data['base_discount_amount'] != null
            ? (data['base_discount_amount'] as num).toDouble()
            : null,
        additionalDiscountPercentage:
            data['additional_discount_percentage'] != null
                ? (data['additional_discount_percentage'] as num).toDouble()
                : null,
        discountAmount: data['discount_amount'] != null
            ? (data['discount_amount'] as num).toDouble()
            : null,
        baseGrandTotal: data['base_grand_total'] != null
            ? (data['base_grand_total'] as num).toDouble()
            : null,
        baseRoundingAdjustment: data['base_rounding_adjustment'] != null
            ? (data['base_rounding_adjustment'] as num).toDouble()
            : null,
        baseRoundedTotal: data['base_rounded_total'] != null
            ? (data['base_rounded_total'] as num).toDouble()
            : null,
        baseInWords: data['base_in_words'] as String?,
        grandTotal: data['grand_total'] != null
            ? (data['grand_total'] as num).toDouble()
            : null,
        roundingAdjustment: data['rounding_adjustment'] != null
            ? (data['rounding_adjustment'] as num).toDouble()
            : null,
        roundedTotal: data['rounded_total'] != null
            ? (data['rounded_total'] as num).toDouble()
            : null,
        inWords: data['in_words'] as String?,
        totalAdvance: data['total_advance'] != null
            ? (data['total_advance'] as num).toDouble()
            : null,
        outstandingAmount: data['outstanding_amount'] != null
            ? (data['outstanding_amount'] as num).toDouble()
            : null,
        allocateAdvancesAutomatically:
            data['allocate_advances_automatically'] as int?,
        paymentTermsTemplate: data['payment_terms_template'] as dynamic,
        cashBankAccount: data['cash_bank_account'] as dynamic,
        paidAmount: data['paid_amount'] != null
            ? (data['paid_amount'] as num).toDouble()
            : null,
        baseChangeAmount: data['base_change_amount'] != null
            ? (data['base_change_amount'] as num).toDouble()
            : null,
        changeAmount: data['change_amount'] != null
            ? (data['change_amount'] as num).toDouble()
            : null,
        accountForChangeAmount: data['account_for_change_amount'] as String?,
        writeOffAmount: data['write_off_amount'] != null
            ? (data['write_off_amount'] as num).toDouble()
            : null,
        baseWriteOffAmount: data['base_write_off_amount'] != null
            ? (data['base_write_off_amount'] as num).toDouble()
            : null,
        writeOffOutstandingAmountAutomatically:
            data['write_off_outstanding_amount_automatically'] as int?,
        writeOffAccount: data['write_off_account'] as String?,
        writeOffCostCenter: data['write_off_cost_center'] as String?,
        tcName: data['tc_name'] as dynamic,
        terms: data['terms'] as dynamic,
        letterHead: data['letter_head'] as dynamic,
        groupSameItems: data['group_same_items'] as int?,
        language: data['language'] as String?,
        selectPrintHeading: data['select_print_heading'] as dynamic,
        interCompanyInvoiceReference:
            data['inter_company_invoice_reference'] as dynamic,
        customerGroup: data['customer_group'] as String?,
        campaign: data['campaign'] as dynamic,
        isDiscounted: data['is_discounted'] as int?,
        status: data['status'] as String?,
        source: data['source'] as dynamic,
        debitTo: data['debit_to'] as String?,
        partyAccountCurrency: data['party_account_currency'] as String?,
        isOpening: data['is_opening'] as String?,
        remarks: data['remarks'] as String?,
        salesPartner: data['sales_partner'] as dynamic,
        amountEligibleForCommission:
            data['amount_eligible_for_commission'] as double?,
        commissionRate: data['commission_rate'] as double?,
        totalCommission: data['total_commission'] as double?,
        fromDate: data['from_date'] as dynamic,
        toDate: data['to_date'] as dynamic,
        autoRepeat: data['auto_repeat'] as dynamic,
        againstIncomeAccount: data['against_income_account'] as dynamic,
        doctype: data['doctype'] as String?,
        items: (data['items'] as List<dynamic>?)
            ?.map((e) => PosInvoiceItem.fromMap(e as Map<String, dynamic>))
            .toList(),
        taxes: (data['taxes'] as List<dynamic>?)
            ?.map((e) => PosInvoiceTax.fromMap(e as Map<String, dynamic>))
            .toList(),
        timesheets: data['timesheets'] as List<dynamic>?,
        pricingRules: data['pricing_rules'] as List<dynamic>?,
        paymentSchedule: data['payment_schedule'] as List<dynamic>?,
        payments: (data['payments'] as List<dynamic>?)
            ?.map((e) => PosInvoicePayment.fromMap(e as Map<String, dynamic>))
            .toList(),
        advances: data['advances'] as List<dynamic>?,
        salesTeam: data['sales_team'] as List<dynamic>?,
        packedItems: data['packed_items'] as List<dynamic>?,
        companyVatRegistrationNumber:
            data['custom_vat_registration_number'] as String?,
        companyTaxId: data['custom_company_tax_id'] as String?,
        companyPhoneNumber: data['custom_company_phone_number'] as String?,
        onload: data['__onload'] == null
            ? null
            : PosInvoiceOnload.fromMap(
                data['__onload'] as Map<String, dynamic>,
              ),
        customFiscalContent: data['custom_fiscal_content'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PosInvoice].
  factory PosInvoice.fromJson(String data) {
    return PosInvoice.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final String? name;
  final String? owner;
  final String? creation;
  final String? modified;
  final String? modifiedBy;
  final int? docstatus;
  final int? idx;
  final String? title;
  final String? namingSeries;
  final String? customer;
  final String? customerName;
  final String? taxId;
  final String? posProfile;
  final dynamic consolidatedInvoice;
  final int? isPos;
  final int? isReturn;
  final int? customApplyTds;
  final String? customTaxWithholdingCategory;
  final String? customMrc;
  final String? customFiscalNo;
  final int? updateBilledAmountInSalesOrder;
  final int? updateBilledAmountInDeliveryNote;
  final String? company;
  final String? postingDate;
  final String? postingTime;
  final int? setPostingTime;
  final String? dueDate;
  final dynamic amendedFrom;
  final dynamic returnAgainst;
  final dynamic project;
  final dynamic costCenter;
  final dynamic poNo;
  final dynamic poDate;
  final dynamic customerAddress;
  final dynamic addressDisplay;
  final dynamic contactPerson;
  final dynamic contactDisplay;
  final dynamic contactMobile;
  final dynamic contactEmail;
  final dynamic territory;
  final dynamic shippingAddressName;
  final dynamic shippingAddress;
  final dynamic companyAddress;
  final dynamic companyAddressDisplay;
  final dynamic companyContactPerson;
  final String? currency;
  final double? conversionRate;
  final String? sellingPriceList;
  final String? priceListCurrency;
  final double? plcConversionRate;
  final int? ignorePricingRule;
  final String? setWarehouse;
  final int? updateStock;
  final dynamic scanBarcode;
  final double? totalBillingAmount;
  final double? totalQty;
  final double? baseTotal;
  final double? baseNetTotal;
  final double? total;
  final double? netTotal;
  final double? totalNetWeight;
  final String? taxesAndCharges;
  final dynamic shippingRule;
  final String? taxCategory;
  final String? otherChargesCalculation;
  final double? baseTotalTaxesAndCharges;
  final double? totalTaxesAndCharges;
  final double? loyaltyPoints;
  final double? loyaltyAmount;
  final int? redeemLoyaltyPoints;
  final dynamic loyaltyProgram;
  final dynamic loyaltyRedemptionAccount;
  final dynamic loyaltyRedemptionCostCenter;
  final dynamic couponCode;
  final String? applyDiscountOn;
  final double? baseDiscountAmount;
  final double? additionalDiscountPercentage;
  final double? discountAmount;
  final double? baseGrandTotal;
  final double? baseRoundingAdjustment;
  final double? baseRoundedTotal;
  final String? baseInWords;
  final double? grandTotal;
  final double? roundingAdjustment;
  final double? roundedTotal;
  final String? inWords;
  final double? totalAdvance;
  final double? outstandingAmount;
  final int? allocateAdvancesAutomatically;
  final dynamic paymentTermsTemplate;
  final dynamic cashBankAccount;
  final double? basePaidAmount;
  final double? paidAmount;
  final double? baseChangeAmount;
  final double? changeAmount;
  final String? accountForChangeAmount;
  final double? writeOffAmount;
  final double? baseWriteOffAmount;
  final int? writeOffOutstandingAmountAutomatically;
  final String? writeOffAccount;
  final String? writeOffCostCenter;
  final dynamic tcName;
  final dynamic terms;
  final dynamic letterHead;
  final int? groupSameItems;
  final String? language;
  final dynamic selectPrintHeading;
  final dynamic interCompanyInvoiceReference;
  final String? customerGroup;
  final dynamic campaign;
  final int? isDiscounted;
  final String? status;
  final dynamic source;
  final String? debitTo;
  final String? partyAccountCurrency;
  final String? isOpening;
  final String? remarks;
  final dynamic salesPartner;
  final double? amountEligibleForCommission;
  final double? commissionRate;
  final double? totalCommission;
  final dynamic fromDate;
  final dynamic toDate;
  final dynamic autoRepeat;
  final dynamic againstIncomeAccount;
  final String? doctype;
  final List<PosInvoiceItem>? items;
  final bool? allItemsSelected;
  final List<PosInvoiceTax>? taxes;
  final List<dynamic>? timesheets;
  final List<dynamic>? pricingRules;
  final List<dynamic>? paymentSchedule;
  final List<PosInvoicePayment>? payments;
  final List<dynamic>? advances;
  final List<dynamic>? salesTeam;
  final List<dynamic>? packedItems;
  final PosInvoiceOnload? onload;
  final String? companyTaxId;
  final String? companyVatRegistrationNumber;
  final String? companyPhoneNumber;
  final String? customFiscalContent;

  Map<String, dynamic> toMap() => {
        if (name != null) 'name': name,
        if (owner != null) 'owner': owner,
        if (creation != null) 'creation': creation,
        if (modified != null) 'modified': modified,
        if (modifiedBy != null) 'modified_by': modifiedBy,
        if (docstatus != null) 'docstatus': docstatus,
        if (idx != null) 'idx': idx,
        if (title != null) 'title': title,
        if (namingSeries != null) 'naming_series': namingSeries,
        if (customer != null) 'customer': customer,
        if (customerName != null) 'customer_name': customerName,
        if (taxId != null) 'tax_id': taxId,
        if (posProfile != null) 'pos_profile': posProfile,
        if (consolidatedInvoice != null)
          'consolidated_invoice': consolidatedInvoice,
        if (isPos != null) 'is_pos': isPos,
        if (isReturn != null) 'is_return': isReturn,
        if (customApplyTds != null) 'custom_apply_tds': customApplyTds,
        if (customTaxWithholdingCategory != null)
          'custom_tax_withholding_category': customTaxWithholdingCategory,
        if (customMrc != null) 'custom_mrc': customMrc,
        if (customFiscalNo != null) 'custom_fiscal_no': customFiscalNo,
        if (updateBilledAmountInSalesOrder != null)
          'update_billed_amount_in_sales_order': updateBilledAmountInSalesOrder,
        if (updateBilledAmountInDeliveryNote != null)
          'update_billed_amount_in_delivery_note':
              updateBilledAmountInDeliveryNote,
        if (company != null) 'company': company,
        if (postingDate != null) 'posting_date': postingDate,
        if (postingTime != null) 'posting_time': postingTime,
        if (setPostingTime != null) 'set_posting_time': setPostingTime,
        if (dueDate != null) 'due_date': dueDate,
        if (amendedFrom != null) 'amended_from': amendedFrom,
        if (returnAgainst != null) 'return_against': returnAgainst,
        if (project != null) 'project': project,
        if (costCenter != null) 'cost_center': costCenter,
        if (poNo != null) 'po_no': poNo,
        if (poDate != null) 'po_date': poDate,
        if (customerAddress != null) 'customer_address': customerAddress,
        if (addressDisplay != null) 'address_display': addressDisplay,
        if (contactPerson != null) 'contact_person': contactPerson,
        if (contactDisplay != null) 'contact_display': contactDisplay,
        if (contactMobile != null) 'contact_mobile': contactMobile,
        if (contactEmail != null) 'contact_email': contactEmail,
        if (territory != null) 'territory': territory,
        if (shippingAddressName != null)
          'shipping_address_name': shippingAddressName,
        if (shippingAddress != null) 'shipping_address': shippingAddress,
        if (companyAddress != null) 'company_address': companyAddress,
        if (companyAddressDisplay != null)
          'company_address_display': companyAddressDisplay,
        if (companyContactPerson != null)
          'company_contact_person': companyContactPerson,
        if (currency != null) 'currency': currency,
        if (conversionRate != null) 'conversion_rate': conversionRate,
        if (sellingPriceList != null) 'selling_price_list': sellingPriceList,
        if (priceListCurrency != null) 'price_list_currency': priceListCurrency,
        if (plcConversionRate != null) 'plc_conversion_rate': plcConversionRate,
        if (ignorePricingRule != null) 'ignore_pricing_rule': ignorePricingRule,
        if (setWarehouse != null) 'set_warehouse': setWarehouse,
        if (updateStock != null) 'update_stock': updateStock,
        if (scanBarcode != null) 'scan_barcode': scanBarcode,
        if (totalBillingAmount != null)
          'total_billing_amount': totalBillingAmount,
        if (totalQty != null) 'total_qty': totalQty,
        if (baseTotal != null) 'base_total': baseTotal,
        if (baseNetTotal != null) 'base_net_total': baseNetTotal,
        if (total != null) 'total': total,
        if (netTotal != null) 'net_total': netTotal,
        if (totalNetWeight != null) 'total_net_weight': totalNetWeight,
        if (taxesAndCharges != null) 'taxes_and_charges': taxesAndCharges,
        if (shippingRule != null) 'shipping_rule': shippingRule,
        if (taxCategory != null) 'tax_category': taxCategory,
        if (otherChargesCalculation != null)
          'other_charges_calculation': otherChargesCalculation,
        if (baseTotalTaxesAndCharges != null)
          'base_total_taxes_and_charges': baseTotalTaxesAndCharges,
        if (totalTaxesAndCharges != null)
          'total_taxes_and_charges': totalTaxesAndCharges,
        if (loyaltyPoints != null) 'loyalty_points': loyaltyPoints,
        if (loyaltyAmount != null) 'loyalty_amount': loyaltyAmount,
        if (redeemLoyaltyPoints != null)
          'redeem_loyalty_points': redeemLoyaltyPoints,
        if (loyaltyProgram != null) 'loyalty_program': loyaltyProgram,
        if (loyaltyRedemptionAccount != null)
          'loyalty_redemption_account': loyaltyRedemptionAccount,
        if (loyaltyRedemptionCostCenter != null)
          'loyalty_redemption_cost_center': loyaltyRedemptionCostCenter,
        if (couponCode != null) 'coupon_code': couponCode,
        if (applyDiscountOn != null) 'apply_discount_on': applyDiscountOn,
        if (baseDiscountAmount != null)
          'base_discount_amount': baseDiscountAmount,
        if (additionalDiscountPercentage != null)
          'additional_discount_percentage': additionalDiscountPercentage,
        if (discountAmount != null) 'discount_amount': discountAmount,
        if (baseGrandTotal != null) 'base_grand_total': baseGrandTotal,
        if (baseRoundingAdjustment != null)
          'base_rounding_adjustment': baseRoundingAdjustment,
        if (baseRoundedTotal != null) 'base_rounded_total': baseRoundedTotal,
        if (baseInWords != null) 'base_in_words': baseInWords,
        if (grandTotal != null) 'grand_total': grandTotal,
        if (roundingAdjustment != null)
          'rounding_adjustment': roundingAdjustment,
        if (roundedTotal != null) 'rounded_total': roundedTotal,
        if (inWords != null) 'in_words': inWords,
        if (totalAdvance != null) 'total_advance': totalAdvance,
        if (outstandingAmount != null) 'outstanding_amount': outstandingAmount,
        if (allocateAdvancesAutomatically != null)
          'allocate_advances_automatically': allocateAdvancesAutomatically,
        if (paymentTermsTemplate != null)
          'payment_terms_template': paymentTermsTemplate,
        if (cashBankAccount != null) 'cash_bank_account': cashBankAccount,
        if (basePaidAmount != null) 'base_paid_amount': basePaidAmount,
        if (paidAmount != null) 'paid_amount': paidAmount,
        if (baseChangeAmount != null) 'base_change_amount': baseChangeAmount,
        if (changeAmount != null) 'change_amount': changeAmount,
        if (accountForChangeAmount != null)
          'account_for_change_amount': accountForChangeAmount,
        if (writeOffAmount != null) 'write_off_amount': writeOffAmount,
        if (baseWriteOffAmount != null)
          'base_write_off_amount': baseWriteOffAmount,
        if (writeOffOutstandingAmountAutomatically != null)
          'write_off_outstanding_amount_automatically':
              writeOffOutstandingAmountAutomatically,
        if (writeOffAccount != null) 'write_off_account': writeOffAccount,
        if (writeOffCostCenter != null)
          'write_off_cost_center': writeOffCostCenter,
        if (tcName != null) 'tc_name': tcName,
        if (terms != null) 'terms': terms,
        if (letterHead != null) 'letter_head': letterHead,
        if (groupSameItems != null) 'group_same_items': groupSameItems,
        if (language != null) 'language': language,
        if (selectPrintHeading != null)
          'select_print_heading': selectPrintHeading,
        if (interCompanyInvoiceReference != null)
          'inter_company_invoice_reference': interCompanyInvoiceReference,
        if (customerGroup != null) 'customer_group': customerGroup,
        if (campaign != null) 'campaign': campaign,
        if (isDiscounted != null) 'is_discounted': isDiscounted,
        if (status != null) 'status': status,
        if (source != null) 'source': source,
        if (debitTo != null) 'debit_to': debitTo,
        if (partyAccountCurrency != null)
          'party_account_currency': partyAccountCurrency,
        if (isOpening != null) 'is_opening': isOpening,
        if (remarks != null) 'remarks': remarks,
        if (salesPartner != null) 'sales_partner': salesPartner,
        if (amountEligibleForCommission != null)
          'amount_eligible_for_commission': amountEligibleForCommission,
        if (commissionRate != null) 'commission_rate': commissionRate,
        if (totalCommission != null) 'total_commission': totalCommission,
        if (fromDate != null) 'from_date': fromDate,
        if (toDate != null) 'to_date': toDate,
        if (autoRepeat != null) 'auto_repeat': autoRepeat,
        if (againstIncomeAccount != null)
          'against_income_account': againstIncomeAccount,
        if (doctype != null) 'doctype': doctype,
        if (items != null) 'items': items?.map((e) => e.toMap()).toList(),
        if (taxes != null) 'taxes': taxes?.map((e) => e.toMap()).toList(),
        if (timesheets != null) 'timesheets': timesheets,
        if (pricingRules != null) 'pricing_rules': pricingRules,
        if (paymentSchedule != null) 'payment_schedule': paymentSchedule,
        if (payments != null)
          'payments': payments?.map((e) => e.toMap()).toList(),
        if (advances != null) 'advances': advances,
        if (salesTeam != null) 'sales_team': salesTeam,
        if (packedItems != null) 'packed_items': packedItems,
        if (onload != null) '__onload': onload?.toMap(),
        if (companyTaxId != null) 'custom_company_tax_id': companyTaxId,
        if (companyPhoneNumber != null)
          'custom_company_phone_number': companyPhoneNumber,
        if (companyVatRegistrationNumber != null)
          'custom_vat_registration_number': companyVatRegistrationNumber,
        if (customFiscalContent != null)
          'custom_fiscal_content': customFiscalContent,
      };

  /// `dart:convert`
  ///
  /// Converts [PosInvoice] to a JSON string.
  String toJson() => json.encode(toMap());

  PosInvoice copyWith({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    String? modifiedBy,
    int? docstatus,
    int? idx,
    String? title,
    String? namingSeries,
    String? customer,
    String? customerName,
    String? taxId,
    String? posProfile,
    dynamic consolidatedInvoice,
    int? isPos,
    int? isReturn,
    int? customApplyTds,
    String? customTaxWithholdingCategory,
    String? customMrc,
    String? customFiscalNo,
    int? updateBilledAmountInSalesOrder,
    int? updateBilledAmountInDeliveryNote,
    String? company,
    String? postingDate,
    String? postingTime,
    int? setPostingTime,
    String? dueDate,
    dynamic amendedFrom,
    dynamic returnAgainst,
    dynamic project,
    dynamic costCenter,
    dynamic poNo,
    dynamic poDate,
    dynamic customerAddress,
    dynamic addressDisplay,
    dynamic contactPerson,
    dynamic contactDisplay,
    dynamic contactMobile,
    dynamic contactEmail,
    dynamic territory,
    dynamic shippingAddressName,
    dynamic shippingAddress,
    dynamic companyAddress,
    dynamic companyAddressDisplay,
    dynamic companyContactPerson,
    String? currency,
    double? conversionRate,
    String? sellingPriceList,
    String? priceListCurrency,
    double? plcConversionRate,
    int? ignorePricingRule,
    String? setWarehouse,
    int? updateStock,
    dynamic scanBarcode,
    double? totalBillingAmount,
    double? totalQty,
    double? baseTotal,
    double? baseNetTotal,
    double? total,
    double? netTotal,
    double? totalNetWeight,
    String? taxesAndCharges,
    dynamic shippingRule,
    String? taxCategory,
    String? otherChargesCalculation,
    double? baseTotalTaxesAndCharges,
    double? totalTaxesAndCharges,
    double? loyaltyPoints,
    double? loyaltyAmount,
    int? redeemLoyaltyPoints,
    dynamic loyaltyProgram,
    dynamic loyaltyRedemptionAccount,
    dynamic loyaltyRedemptionCostCenter,
    dynamic couponCode,
    String? applyDiscountOn,
    double? baseDiscountAmount,
    double? additionalDiscountPercentage,
    double? discountAmount,
    double? baseGrandTotal,
    double? baseRoundingAdjustment,
    double? baseRoundedTotal,
    String? baseInWords,
    double? grandTotal,
    double? roundingAdjustment,
    double? roundedTotal,
    String? inWords,
    double? totalAdvance,
    double? outstandingAmount,
    int? allocateAdvancesAutomatically,
    dynamic paymentTermsTemplate,
    dynamic cashBankAccount,
    double? basePaidAmount,
    double? paidAmount,
    double? baseChangeAmount,
    double? changeAmount,
    String? accountForChangeAmount,
    double? writeOffAmount,
    double? baseWriteOffAmount,
    int? writeOffOutstandingAmountAutomatically,
    String? writeOffAccount,
    String? writeOffCostCenter,
    dynamic tcName,
    dynamic terms,
    dynamic letterHead,
    int? groupSameItems,
    String? language,
    dynamic selectPrintHeading,
    dynamic interCompanyInvoiceReference,
    String? customerGroup,
    dynamic campaign,
    int? isDiscounted,
    String? status,
    dynamic source,
    String? debitTo,
    String? partyAccountCurrency,
    String? isOpening,
    String? remarks,
    dynamic salesPartner,
    double? amountEligibleForCommission,
    double? commissionRate,
    double? totalCommission,
    dynamic fromDate,
    dynamic toDate,
    dynamic autoRepeat,
    dynamic againstIncomeAccount,
    String? doctype,
    List<PosInvoiceItem>? items,
    bool? allItemsSelected,
    List<PosInvoiceTax>? taxes,
    List<dynamic>? timesheets,
    List<dynamic>? pricingRules,
    List<dynamic>? paymentSchedule,
    List<PosInvoicePayment>? payments,
    List<dynamic>? advances,
    List<dynamic>? salesTeam,
    List<dynamic>? packedItems,
    PosInvoiceOnload? onload,
    String? companyTaxId,
    String? companyVatRegistrationNumber,
    String? companyPhoneNumber,
    String? customFiscalContent,
  }) {
    return PosInvoice(
      name: name ?? this.name,
      owner: owner ?? this.owner,
      creation: creation ?? this.creation,
      modified: modified ?? this.modified,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      docstatus: docstatus ?? this.docstatus,
      idx: idx ?? this.idx,
      title: title ?? this.title,
      namingSeries: namingSeries ?? this.namingSeries,
      customer: customer ?? this.customer,
      customerName: customerName ?? this.customerName,
      taxId: taxId ?? this.taxId,
      posProfile: posProfile ?? this.posProfile,
      consolidatedInvoice: consolidatedInvoice ?? this.consolidatedInvoice,
      isPos: isPos ?? this.isPos,
      isReturn: isReturn ?? this.isReturn,
      customApplyTds: customApplyTds ?? this.customApplyTds,
      customTaxWithholdingCategory:
          customTaxWithholdingCategory ?? this.customTaxWithholdingCategory,
      customMrc: customMrc ?? this.customMrc,
      customFiscalNo: customFiscalNo ?? this.customFiscalNo,
      updateBilledAmountInSalesOrder:
          updateBilledAmountInSalesOrder ?? this.updateBilledAmountInSalesOrder,
      updateBilledAmountInDeliveryNote: updateBilledAmountInDeliveryNote ??
          this.updateBilledAmountInDeliveryNote,
      company: company ?? this.company,
      postingDate: postingDate ?? this.postingDate,
      postingTime: postingTime ?? this.postingTime,
      setPostingTime: setPostingTime ?? this.setPostingTime,
      dueDate: dueDate ?? this.dueDate,
      amendedFrom: amendedFrom ?? this.amendedFrom,
      returnAgainst: returnAgainst ?? this.returnAgainst,
      project: project ?? this.project,
      costCenter: costCenter ?? this.costCenter,
      poNo: poNo ?? this.poNo,
      poDate: poDate ?? this.poDate,
      customerAddress: customerAddress ?? this.customerAddress,
      addressDisplay: addressDisplay ?? this.addressDisplay,
      contactPerson: contactPerson ?? this.contactPerson,
      contactDisplay: contactDisplay ?? this.contactDisplay,
      contactMobile: contactMobile ?? this.contactMobile,
      contactEmail: contactEmail ?? this.contactEmail,
      territory: territory ?? this.territory,
      shippingAddressName: shippingAddressName ?? this.shippingAddressName,
      shippingAddress: shippingAddress ?? this.shippingAddress,
      companyAddress: companyAddress ?? this.companyAddress,
      companyAddressDisplay:
          companyAddressDisplay ?? this.companyAddressDisplay,
      companyContactPerson: companyContactPerson ?? this.companyContactPerson,
      currency: currency ?? this.currency,
      conversionRate: conversionRate ?? this.conversionRate,
      sellingPriceList: sellingPriceList ?? this.sellingPriceList,
      priceListCurrency: priceListCurrency ?? this.priceListCurrency,
      plcConversionRate: plcConversionRate ?? this.plcConversionRate,
      ignorePricingRule: ignorePricingRule ?? this.ignorePricingRule,
      setWarehouse: setWarehouse ?? this.setWarehouse,
      updateStock: updateStock ?? this.updateStock,
      scanBarcode: scanBarcode ?? this.scanBarcode,
      totalBillingAmount: totalBillingAmount ?? this.totalBillingAmount,
      totalQty: totalQty ?? this.totalQty,
      baseTotal: baseTotal ?? this.baseTotal,
      baseNetTotal: baseNetTotal ?? this.baseNetTotal,
      total: total ?? this.total,
      netTotal: netTotal ?? this.netTotal,
      totalNetWeight: totalNetWeight ?? this.totalNetWeight,
      taxesAndCharges: taxesAndCharges ?? this.taxesAndCharges,
      shippingRule: shippingRule ?? this.shippingRule,
      taxCategory: taxCategory ?? this.taxCategory,
      otherChargesCalculation:
          otherChargesCalculation ?? this.otherChargesCalculation,
      baseTotalTaxesAndCharges:
          baseTotalTaxesAndCharges ?? this.baseTotalTaxesAndCharges,
      totalTaxesAndCharges: totalTaxesAndCharges ?? this.totalTaxesAndCharges,
      loyaltyPoints: loyaltyPoints ?? this.loyaltyPoints,
      loyaltyAmount: loyaltyAmount ?? this.loyaltyAmount,
      redeemLoyaltyPoints: redeemLoyaltyPoints ?? this.redeemLoyaltyPoints,
      loyaltyProgram: loyaltyProgram ?? this.loyaltyProgram,
      loyaltyRedemptionAccount:
          loyaltyRedemptionAccount ?? this.loyaltyRedemptionAccount,
      loyaltyRedemptionCostCenter:
          loyaltyRedemptionCostCenter ?? this.loyaltyRedemptionCostCenter,
      couponCode: couponCode ?? this.couponCode,
      applyDiscountOn: applyDiscountOn ?? this.applyDiscountOn,
      baseDiscountAmount: baseDiscountAmount ?? this.baseDiscountAmount,
      additionalDiscountPercentage:
          additionalDiscountPercentage ?? this.additionalDiscountPercentage,
      discountAmount: discountAmount ?? this.discountAmount,
      baseGrandTotal: baseGrandTotal ?? this.baseGrandTotal,
      baseRoundingAdjustment:
          baseRoundingAdjustment ?? this.baseRoundingAdjustment,
      baseRoundedTotal: baseRoundedTotal ?? this.baseRoundedTotal,
      baseInWords: baseInWords ?? this.baseInWords,
      grandTotal: grandTotal ?? this.grandTotal,
      roundingAdjustment: roundingAdjustment ?? this.roundingAdjustment,
      roundedTotal: roundedTotal ?? this.roundedTotal,
      inWords: inWords ?? this.inWords,
      totalAdvance: totalAdvance ?? this.totalAdvance,
      outstandingAmount: outstandingAmount ?? this.outstandingAmount,
      allocateAdvancesAutomatically:
          allocateAdvancesAutomatically ?? this.allocateAdvancesAutomatically,
      paymentTermsTemplate: paymentTermsTemplate ?? this.paymentTermsTemplate,
      cashBankAccount: cashBankAccount ?? this.cashBankAccount,
      basePaidAmount: basePaidAmount ?? this.basePaidAmount,
      paidAmount: paidAmount ?? this.paidAmount,
      baseChangeAmount: baseChangeAmount ?? this.baseChangeAmount,
      changeAmount: changeAmount ?? this.changeAmount,
      accountForChangeAmount:
          accountForChangeAmount ?? this.accountForChangeAmount,
      writeOffAmount: writeOffAmount ?? this.writeOffAmount,
      baseWriteOffAmount: baseWriteOffAmount ?? this.baseWriteOffAmount,
      writeOffOutstandingAmountAutomatically:
          writeOffOutstandingAmountAutomatically ??
              this.writeOffOutstandingAmountAutomatically,
      writeOffAccount: writeOffAccount ?? this.writeOffAccount,
      writeOffCostCenter: writeOffCostCenter ?? this.writeOffCostCenter,
      tcName: tcName ?? this.tcName,
      terms: terms ?? this.terms,
      letterHead: letterHead ?? this.letterHead,
      groupSameItems: groupSameItems ?? this.groupSameItems,
      language: language ?? this.language,
      selectPrintHeading: selectPrintHeading ?? this.selectPrintHeading,
      interCompanyInvoiceReference:
          interCompanyInvoiceReference ?? this.interCompanyInvoiceReference,
      customerGroup: customerGroup ?? this.customerGroup,
      campaign: campaign ?? this.campaign,
      isDiscounted: isDiscounted ?? this.isDiscounted,
      status: status ?? this.status,
      source: source ?? this.source,
      debitTo: debitTo ?? this.debitTo,
      partyAccountCurrency: partyAccountCurrency ?? this.partyAccountCurrency,
      isOpening: isOpening ?? this.isOpening,
      remarks: remarks ?? this.remarks,
      salesPartner: salesPartner ?? this.salesPartner,
      amountEligibleForCommission:
          amountEligibleForCommission ?? this.amountEligibleForCommission,
      commissionRate: commissionRate ?? this.commissionRate,
      totalCommission: totalCommission ?? this.totalCommission,
      fromDate: fromDate ?? this.fromDate,
      toDate: toDate ?? this.toDate,
      autoRepeat: autoRepeat ?? this.autoRepeat,
      againstIncomeAccount: againstIncomeAccount ?? this.againstIncomeAccount,
      doctype: doctype ?? this.doctype,
      items: items ?? this.items,
      allItemsSelected: allItemsSelected ?? this.allItemsSelected,
      taxes: taxes ?? this.taxes,
      timesheets: timesheets ?? this.timesheets,
      pricingRules: pricingRules ?? this.pricingRules,
      paymentSchedule: paymentSchedule ?? this.paymentSchedule,
      payments: payments ?? this.payments,
      advances: advances ?? this.advances,
      salesTeam: salesTeam ?? this.salesTeam,
      packedItems: packedItems ?? this.packedItems,
      onload: onload ?? this.onload,
      companyTaxId: companyTaxId ?? this.companyTaxId,
      companyPhoneNumber: companyPhoneNumber ?? this.companyPhoneNumber,
      companyVatRegistrationNumber:
          companyVatRegistrationNumber ?? this.companyVatRegistrationNumber,
      customFiscalContent: customFiscalContent ?? this.customFiscalContent,
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
      title,
      namingSeries,
      customer,
      customerName,
      taxId,
      posProfile,
      consolidatedInvoice,
      isPos,
      isReturn,
      customApplyTds,
      customTaxWithholdingCategory,
      customMrc,
      customFiscalNo,
      updateBilledAmountInSalesOrder,
      updateBilledAmountInDeliveryNote,
      company,
      postingDate,
      postingTime,
      setPostingTime,
      dueDate,
      amendedFrom,
      returnAgainst,
      project,
      costCenter,
      poNo,
      poDate,
      customerAddress,
      addressDisplay,
      contactPerson,
      contactDisplay,
      contactMobile,
      contactEmail,
      territory,
      shippingAddressName,
      shippingAddress,
      companyAddress,
      companyAddressDisplay,
      companyContactPerson,
      currency,
      conversionRate,
      sellingPriceList,
      priceListCurrency,
      plcConversionRate,
      ignorePricingRule,
      setWarehouse,
      updateStock,
      scanBarcode,
      totalBillingAmount,
      totalQty,
      baseTotal,
      baseNetTotal,
      total,
      netTotal,
      totalNetWeight,
      taxesAndCharges,
      shippingRule,
      taxCategory,
      otherChargesCalculation,
      baseTotalTaxesAndCharges,
      totalTaxesAndCharges,
      loyaltyPoints,
      loyaltyAmount,
      redeemLoyaltyPoints,
      loyaltyProgram,
      loyaltyRedemptionAccount,
      loyaltyRedemptionCostCenter,
      couponCode,
      applyDiscountOn,
      baseDiscountAmount,
      additionalDiscountPercentage,
      discountAmount,
      baseGrandTotal,
      baseRoundingAdjustment,
      baseRoundedTotal,
      baseInWords,
      grandTotal,
      roundingAdjustment,
      roundedTotal,
      inWords,
      totalAdvance,
      outstandingAmount,
      allocateAdvancesAutomatically,
      paymentTermsTemplate,
      cashBankAccount,
      basePaidAmount,
      paidAmount,
      baseChangeAmount,
      changeAmount,
      accountForChangeAmount,
      writeOffAmount,
      baseWriteOffAmount,
      writeOffOutstandingAmountAutomatically,
      writeOffAccount,
      writeOffCostCenter,
      tcName,
      terms,
      letterHead,
      groupSameItems,
      language,
      selectPrintHeading,
      interCompanyInvoiceReference,
      customerGroup,
      campaign,
      isDiscounted,
      status,
      source,
      debitTo,
      partyAccountCurrency,
      isOpening,
      remarks,
      salesPartner,
      amountEligibleForCommission,
      commissionRate,
      totalCommission,
      fromDate,
      toDate,
      autoRepeat,
      againstIncomeAccount,
      doctype,
      items,
      allItemsSelected,
      taxes,
      timesheets,
      pricingRules,
      paymentSchedule,
      payments,
      advances,
      salesTeam,
      packedItems,
      onload,
      companyTaxId,
      companyVatRegistrationNumber,
      companyPhoneNumber,
      customFiscalContent,
    ];
  }
}
