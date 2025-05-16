import 'dart:convert';

import 'package:equatable/equatable.dart';

class PosInvoiceItem extends Equatable {
  PosInvoiceItem({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.barcode,
    this.hasItemScanned,
    this.itemCode,
    this.itemName,
    this.customerItemCode,
    this.description,
    this.itemGroup,
    this.brand,
    this.image,
    this.qty,
    this.stockUom,
    this.uom,
    this.conversionFactor,
    this.stockQty,
    this.priceListRate,
    this.basePriceListRate,
    this.marginType,
    this.marginRateOrAmount,
    this.rateWithMargin,
    this.discountPercentage,
    this.discountAmount,
    this.baseRateWithMargin,
    this.rate,
    this.amount,
    this.itemTaxTemplate,
    this.baseRate,
    this.baseAmount,
    this.pricingRules,
    this.isFreeItem,
    this.grantCommission,
    this.netRate,
    this.netAmount,
    this.baseNetRate,
    this.baseNetAmount,
    this.deliveredBySupplier,
    this.incomeAccount,
    this.isFixedAsset,
    this.asset,
    this.financeBook,
    this.expenseAccount,
    this.deferredRevenueAccount,
    this.serviceStopDate,
    this.enableDeferredRevenue,
    this.serviceStartDate,
    this.serviceEndDate,
    this.weightPerUnit,
    this.totalWeight,
    this.weightUom,
    this.warehouse,
    this.targetWarehouse,
    this.qualityInspection,
    this.serialAndBatchBundle,
    this.useSerialBatchFields,
    this.allowZeroValuationRate,
    this.itemTaxRate,
    this.actualBatchQty,
    this.actualQty,
    this.serialNo,
    this.batchNo,
    this.salesOrder,
    this.soDetail,
    this.posInvoiceItem,
    this.deliveryNote,
    this.dnDetail,
    this.deliveredQty,
    this.costCenter,
    this.project,
    this.pageBreak,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
    this.islocal,
    this.unsaved,
    this.hasMargin,
    this.childDocname,
    this.discountAccount,
    this.provisionalExpenseAccount,
    this.hasSerialNo,
    this.hasBatchNo,
    this.minOrderQty,
    this.updateStock,
    this.lastPurchaseRate,
    this.transactionDate,
    this.againstBlanketOrder,
    this.bomNo,
    this.manufacturer,
    this.manufacturerPartNo,
    this.freeItemData,
    this.stockUomRate,
    this.customPlu,
    this.mustBeWholeNumber,
    this.isStockItem,
    this.customTaxId,
    this.isSelected,
    this.allowNegativeStock,
  });

  factory PosInvoiceItem.fromMap(Map<String, dynamic> data) => PosInvoiceItem(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        barcode: data['barcode'] as dynamic,
        hasItemScanned: data['has_item_scanned'] as int?,
        itemCode: data['item_code'] as String?,
        itemName: data['item_name'] as String?,
        customerItemCode: data['customer_item_code'] as dynamic,
        description: data['description'] as String?,
        itemGroup: data['item_group'] as String?,
        brand: data['brand'] as dynamic,
        image: data['image'] as String?,
        qty: data['qty'] as double?,
        stockUom: data['stock_uom'] as String?,
        uom: data['uom'] as String?,
        conversionFactor: (data['conversion_factor'] as num?)?.toDouble(),
        stockQty: data['stock_qty'] as double?,
        priceListRate: data['price_list_rate'] as double?,
        basePriceListRate: data['base_price_list_rate'] as double?,
        marginType: data['margin_type'] as String?,
        marginRateOrAmount: data['margin_rate_or_amount'] as double?,
        rateWithMargin: data['rate_with_margin'] as double?,
        discountPercentage: data['discount_percentage'] as double?,
        discountAmount: data['discount_amount'] as double?,
        baseRateWithMargin: data['base_rate_with_margin'] as double?,
        rate: data['rate'] as double?,
        amount: data['amount'] as double?,
        itemTaxTemplate: data['item_tax_template'] as String?,
        baseRate: data['base_rate'] as double?,
        baseAmount: data['base_amount'] as double?,
        pricingRules: data['pricing_rules'] as String?,
        isFreeItem: data['is_free_item'] as int?,
        grantCommission: data['grant_commission'] as int?,
        netRate: data['net_rate'] as double?,
        netAmount: (data['net_amount'] as num?)?.toDouble(),
        baseNetRate: (data['base_net_rate'] as num?)?.toDouble(),
        baseNetAmount: (data['base_net_amount'] as num?)?.toDouble(),
        deliveredBySupplier: data['delivered_by_supplier'] as int?,
        incomeAccount: data['income_account'] as String?,
        isFixedAsset: data['is_fixed_asset'] as int?,
        asset: data['asset'] as dynamic,
        financeBook: data['finance_book'] as dynamic,
        expenseAccount: data['expense_account'] as String?,
        deferredRevenueAccount: data['deferred_revenue_account'] as dynamic,
        serviceStopDate: data['service_stop_date'] as dynamic,
        enableDeferredRevenue: data['enable_deferred_revenue'] as int?,
        serviceStartDate: data['service_start_date'] as dynamic,
        serviceEndDate: data['service_end_date'] as dynamic,
        weightPerUnit: (data['weight_per_unit'] as num?)?.toDouble(),
        totalWeight: (data['total_weight'] as num?)?.toDouble(),
        weightUom: data['weight_uom'] as dynamic,
        warehouse: data['warehouse'] as String?,
        targetWarehouse: data['target_warehouse'] as dynamic,
        qualityInspection: data['quality_inspection'] as dynamic,
        serialAndBatchBundle: data['serial_and_batch_bundle'] as dynamic,
        useSerialBatchFields: data['use_serial_batch_fields'] as int?,
        allowZeroValuationRate: data['allow_zero_valuation_rate'] as int?,
        itemTaxRate: data['item_tax_rate'] as String?,
        actualBatchQty: (data['actual_batch_qty'] as num?)?.toDouble(),
        actualQty: data['actual_qty'] as double?,
        serialNo: data['serial_no'] as dynamic,
        batchNo: data['batch_no'] as dynamic,
        salesOrder: data['sales_order'] as dynamic,
        soDetail: data['so_detail'] as dynamic,
        posInvoiceItem: data['pos_invoice_item'] as dynamic,
        deliveryNote: data['delivery_note'] as dynamic,
        dnDetail: data['dn_detail'] as dynamic,
        deliveredQty: (data['delivered_qty'] as num?)?.toDouble(),
        costCenter: data['cost_center'] as String?,
        project: data['project'] as dynamic,
        pageBreak: data['page_break'] as int?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
        islocal: data['islocal'] as int?,
        unsaved: data['__unsaved'] as int?,
        hasMargin: data['has_margin'] as bool?,
        childDocname: data['child_docname'] as String?,
        discountAccount: data['discount_account'] as String?,
        provisionalExpenseAccount:
            data['provisional_expense_account'] as String?,
        hasSerialNo: data['has_serial_no'] as int?,
        hasBatchNo: data['has_batch_no'] as int?,
        minOrderQty: (data['min_order_qty'] as num?)?.toDouble(),
        updateStock: data['update_stock'] as int?,
        lastPurchaseRate: data['last_purchase_rate'] as double?,
        transactionDate: data['transaction_date'] as String?,
        againstBlanketOrder: data['against_blanket_order'] is String
            ? data['against_blanket_order'] as String?
            : data['against_blanket_order'].toString(),
        bomNo: data['bom_no'] as String?,
        manufacturer: data['manufacturer'] as String?,
        manufacturerPartNo: data['manufacturer_part_no'] as String?,
        freeItemData: data['free_item_data'] as List<dynamic>?,
        stockUomRate: data['stock_uom_rate'] as double?,
        customPlu: data['custom_plu'] as int?,
        customTaxId: data['custom_tax_id'] as int?,
        mustBeWholeNumber: data['custom_must_be_whole_number'] as int?,
        allowNegativeStock: data['allow_negative_stock'] as int?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [PosInvoiceItem].
  factory PosInvoiceItem.fromJson(String data) {
    return PosInvoiceItem.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  final String? name;
  final String? owner;
  final String? creation;
  final String? modified;
  final String? modifiedBy;
  final int? docstatus;
  final int? idx;
  final dynamic barcode;
  final int? hasItemScanned;
  final String? itemCode;
  final String? itemName;
  final dynamic customerItemCode;
  final String? description;
  final String? itemGroup;
  final dynamic brand;
  final String? image;
  double? qty;
  final String? stockUom;
  final String? uom;
  final double? conversionFactor;
  final double? stockQty;
  final double? priceListRate;
  final double? basePriceListRate;
  final String? marginType;
  final double? marginRateOrAmount;
  final double? rateWithMargin;
  final double? discountPercentage;
  final double? discountAmount;
  final double? baseRateWithMargin;
  final double? rate;
  final double? amount;
  final String? itemTaxTemplate;
  final double? baseRate;
  final double? baseAmount;
  final String? pricingRules;
  final int? isFreeItem;
  final int? grantCommission;
  final double? netRate;
  final double? netAmount;
  final double? baseNetRate;
  final double? baseNetAmount;
  final int? deliveredBySupplier;
  final String? incomeAccount;
  final int? isFixedAsset;
  final dynamic asset;
  final dynamic financeBook;
  final String? expenseAccount;
  final dynamic deferredRevenueAccount;
  final dynamic serviceStopDate;
  final int? enableDeferredRevenue;
  final dynamic serviceStartDate;
  final dynamic serviceEndDate;
  final double? weightPerUnit;
  final double? totalWeight;
  final dynamic weightUom;
  final String? warehouse;
  final dynamic targetWarehouse;
  final dynamic qualityInspection;
  final dynamic serialAndBatchBundle;
  final int? useSerialBatchFields;
  final int? allowZeroValuationRate;
  final String? itemTaxRate;
  final double? actualBatchQty;
  final double? actualQty;
  final dynamic serialNo;
  final dynamic batchNo;
  final dynamic salesOrder;
  final dynamic soDetail;
  final dynamic posInvoiceItem;
  final dynamic deliveryNote;
  final dynamic dnDetail;
  final double? deliveredQty;
  final String? costCenter;
  final dynamic project;
  final int? pageBreak;
  final String? parent;
  final String? parentfield;
  final String? parenttype;
  final String? doctype;
  final int? islocal;
  final int? unsaved;
  final bool? hasMargin;
  final String? childDocname;
  final String? discountAccount;
  final String? provisionalExpenseAccount;
  final int? hasSerialNo;
  final int? hasBatchNo;
  final double? minOrderQty;
  final int? updateStock;
  final double? lastPurchaseRate;
  final String? transactionDate;
  final String? againstBlanketOrder;
  final String? bomNo;
  final String? manufacturer;
  final String? manufacturerPartNo;
  final List<dynamic>? freeItemData;
  final double? stockUomRate;
  final int? customPlu;
  final int? mustBeWholeNumber;
  final int? isStockItem;
  final int? customTaxId;
  final int? allowNegativeStock;

  ///
  final bool? isSelected;

  Map<String, dynamic> toMap() => {
        if (name != null) 'name': name,
        if (owner != null) 'owner': owner,
        if (creation != null) 'creation': creation,
        if (modified != null) 'modified': modified,
        if (modifiedBy != null) 'modified_by': modifiedBy,
        if (docstatus != null) 'docstatus': docstatus,
        if (idx != null) 'idx': idx,
        if (barcode != null) 'barcode': barcode,
        if (hasItemScanned != null) 'has_item_scanned': hasItemScanned,
        if (itemCode != null) 'item_code': itemCode,
        if (itemName != null) 'item_name': itemName,
        if (customerItemCode != null) 'customer_item_code': customerItemCode,
        if (description != null) 'description': description,
        if (itemGroup != null) 'item_group': itemGroup,
        if (brand != null) 'brand': brand,
        if (image != null) 'image': image,
        if (qty != null) 'qty': qty,
        if (stockUom != null) 'stock_uom': stockUom,
        if (uom != null) 'uom': uom,
        if (conversionFactor != null) 'conversion_factor': conversionFactor,
        if (stockQty != null) 'stock_qty': stockQty,
        if (priceListRate != null) 'price_list_rate': priceListRate,
        if (basePriceListRate != null)
          'base_price_list_rate': basePriceListRate,
        if (marginType != null) 'margin_type': marginType,
        if (marginRateOrAmount != null)
          'margin_rate_or_amount': marginRateOrAmount,
        if (rateWithMargin != null) 'rate_with_margin': rateWithMargin,
        if (discountPercentage != null)
          'discount_percentage': discountPercentage,
        if (discountAmount != null) 'discount_amount': discountAmount,
        if (baseRateWithMargin != null)
          'base_rate_with_margin': baseRateWithMargin,
        if (rate != null) 'rate': rate,
        if (amount != null) 'amount': amount,
        if (itemTaxTemplate != null) 'item_tax_template': itemTaxTemplate,
        if (baseRate != null) 'base_rate': baseRate,
        if (baseAmount != null) 'base_amount': baseAmount,
        if (pricingRules != null) 'pricing_rules': pricingRules,
        if (isFreeItem != null) 'is_free_item': isFreeItem,
        if (grantCommission != null) 'grant_commission': grantCommission,
        if (netRate != null) 'net_rate': netRate,
        if (netAmount != null) 'net_amount': netAmount,
        if (baseNetRate != null) 'base_net_rate': baseNetRate,
        if (baseNetAmount != null) 'base_net_amount': baseNetAmount,
        if (deliveredBySupplier != null)
          'delivered_by_supplier': deliveredBySupplier,
        if (incomeAccount != null) 'income_account': incomeAccount,
        if (isFixedAsset != null) 'is_fixed_asset': isFixedAsset,
        if (asset != null) 'asset': asset,
        if (financeBook != null) 'finance_book': financeBook,
        if (expenseAccount != null) 'expense_account': expenseAccount,
        if (deferredRevenueAccount != null)
          'deferred_revenue_account': deferredRevenueAccount,
        if (serviceStopDate != null) 'service_stop_date': serviceStopDate,
        if (enableDeferredRevenue != null)
          'enable_deferred_revenue': enableDeferredRevenue,
        if (serviceStartDate != null) 'service_start_date': serviceStartDate,
        if (serviceEndDate != null) 'service_end_date': serviceEndDate,
        if (weightPerUnit != null) 'weight_per_unit': weightPerUnit,
        if (totalWeight != null) 'total_weight': totalWeight,
        if (weightUom != null) 'weight_uom': weightUom,
        if (warehouse != null) 'warehouse': warehouse,
        if (targetWarehouse != null) 'target_warehouse': targetWarehouse,
        if (qualityInspection != null) 'quality_inspection': qualityInspection,
        if (serialAndBatchBundle != null)
          'serial_and_batch_bundle': serialAndBatchBundle,
        if (useSerialBatchFields != null)
          'use_serial_batch_fields': useSerialBatchFields,
        if (allowZeroValuationRate != null)
          'allow_zero_valuation_rate': allowZeroValuationRate,
        if (itemTaxRate != null) 'item_tax_rate': itemTaxRate,
        if (actualBatchQty != null) 'actual_batch_qty': actualBatchQty,
        if (actualQty != null) 'actual_qty': actualQty,
        if (serialNo != null) 'serial_no': serialNo,
        if (batchNo != null) 'batch_no': batchNo,
        if (salesOrder != null) 'sales_order': salesOrder,
        if (soDetail != null) 'so_detail': soDetail,
        if (posInvoiceItem != null) 'pos_invoice_item': posInvoiceItem,
        if (deliveryNote != null) 'delivery_note': deliveryNote,
        if (dnDetail != null) 'dn_detail': dnDetail,
        if (deliveredQty != null) 'delivered_qty': deliveredQty,
        if (costCenter != null) 'cost_center': costCenter,
        if (project != null) 'project': project,
        if (pageBreak != null) 'page_break': pageBreak,
        if (parent != null) 'parent': parent,
        if (parentfield != null) 'parentfield': parentfield,
        if (parenttype != null) 'parenttype': parenttype,
        if (doctype != null) 'doctype': doctype,
        if (islocal != null) 'islocal': islocal,
        if (unsaved != null) '__unsaved': unsaved,
        if (hasMargin != null) 'has_margin': hasMargin,
        if (childDocname != null) 'child_docname': childDocname,
        if (discountAccount != null) 'discount_account': discountAccount,
        if (provisionalExpenseAccount != null)
          'provisional_expense_account': provisionalExpenseAccount,
        if (hasSerialNo != null) 'has_serial_no': hasSerialNo,
        if (hasBatchNo != null) 'has_batch_no': hasBatchNo,
        if (minOrderQty != null) 'min_order_qty': minOrderQty,
        if (updateStock != null) 'update_stock': updateStock,
        if (lastPurchaseRate != null) 'last_purchase_rate': lastPurchaseRate,
        if (transactionDate != null) 'transaction_date': transactionDate,
        if (againstBlanketOrder != null)
          'against_blanket_order': againstBlanketOrder,
        if (bomNo != null) 'bom_no': bomNo,
        if (manufacturer != null) 'manufacturer': manufacturer,
        if (manufacturerPartNo != null)
          'manufacturer_part_no': manufacturerPartNo,
        if (freeItemData != null) 'free_item_data': freeItemData,
        if (stockUomRate != null) 'stock_uom_rate': stockUomRate,
        if (customTaxId != null) 'custom_tax_id': customTaxId,
        if (mustBeWholeNumber != null)
          'custom_must_be_whole_number': mustBeWholeNumber,
        if (allowNegativeStock != null)
          'allow_negative_stock': allowNegativeStock,
      };

  /// `dart:convert`
  ///
  /// Converts [PosInvoiceItem] to a JSON string.
  String toJson() => json.encode(toMap());

  PosInvoiceItem copyWith({
    String? name,
    String? owner,
    String? creation,
    String? modified,
    String? modifiedBy,
    int? docstatus,
    int? idx,
    dynamic barcode,
    int? hasItemScanned,
    String? itemCode,
    String? itemName,
    dynamic customerItemCode,
    String? description,
    String? itemGroup,
    dynamic brand,
    String? image,
    double? qty,
    String? stockUom,
    String? uom,
    double? conversionFactor,
    double? stockQty,
    double? priceListRate,
    double? basePriceListRate,
    String? marginType,
    double? marginRateOrAmount,
    double? rateWithMargin,
    double? discountPercentage,
    double? discountAmount,
    double? baseRateWithMargin,
    double? rate,
    double? amount,
    String? itemTaxTemplate,
    double? baseRate,
    double? baseAmount,
    String? pricingRules,
    int? isFreeItem,
    int? grantCommission,
    double? netRate,
    double? netAmount,
    double? baseNetRate,
    double? baseNetAmount,
    int? deliveredBySupplier,
    String? incomeAccount,
    int? isFixedAsset,
    dynamic asset,
    dynamic financeBook,
    String? expenseAccount,
    dynamic deferredRevenueAccount,
    dynamic serviceStopDate,
    int? enableDeferredRevenue,
    dynamic serviceStartDate,
    dynamic serviceEndDate,
    double? weightPerUnit,
    double? totalWeight,
    dynamic weightUom,
    String? warehouse,
    dynamic targetWarehouse,
    dynamic qualityInspection,
    dynamic serialAndBatchBundle,
    int? useSerialBatchFields,
    int? allowZeroValuationRate,
    String? itemTaxRate,
    double? actualBatchQty,
    double? actualQty,
    dynamic serialNo,
    dynamic batchNo,
    dynamic salesOrder,
    dynamic soDetail,
    dynamic posInvoiceItem,
    dynamic deliveryNote,
    dynamic dnDetail,
    double? deliveredQty,
    String? costCenter,
    dynamic project,
    int? pageBreak,
    String? parent,
    String? parentfield,
    String? parenttype,
    String? doctype,
    int? islocal,
    int? unsaved,
    bool? hasMargin,
    String? childDocname,
    String? discountAccount,
    String? provisionalExpenseAccount,
    int? hasSerialNo,
    int? hasBatchNo,
    double? minOrderQty,
    int? updateStock,
    double? lastPurchaseRate,
    String? transactionDate,
    String? againstBlanketOrder,
    String? bomNo,
    String? manufacturer,
    String? manufacturerPartNo,
    List<dynamic>? freeItemData,
    double? stockUomRate,
    int? customPlu,
    int? mustBeWholeNumber,
    int? isStockItem,
    int? customTaxId,
    bool? isSelected,
    int? allowNegativeStock,
  }) {
    return PosInvoiceItem(
      name: name ?? this.name,
      owner: owner ?? this.owner,
      creation: creation ?? this.creation,
      modified: modified ?? this.modified,
      modifiedBy: modifiedBy ?? this.modifiedBy,
      docstatus: docstatus ?? this.docstatus,
      idx: idx ?? this.idx,
      barcode: barcode ?? this.barcode,
      hasItemScanned: hasItemScanned ?? this.hasItemScanned,
      itemCode: itemCode ?? this.itemCode,
      itemName: itemName ?? this.itemName,
      customerItemCode: customerItemCode ?? this.customerItemCode,
      description: description ?? this.description,
      itemGroup: itemGroup ?? this.itemGroup,
      brand: brand ?? this.brand,
      image: image ?? this.image,
      qty: qty ?? this.qty,
      stockUom: stockUom ?? this.stockUom,
      uom: uom ?? this.uom,
      conversionFactor: conversionFactor ?? this.conversionFactor,
      stockQty: stockQty ?? this.stockQty,
      priceListRate: priceListRate ?? this.priceListRate,
      basePriceListRate: basePriceListRate ?? this.basePriceListRate,
      marginType: marginType ?? this.marginType,
      marginRateOrAmount: marginRateOrAmount ?? this.marginRateOrAmount,
      rateWithMargin: rateWithMargin ?? this.rateWithMargin,
      discountPercentage: discountPercentage ?? this.discountPercentage,
      discountAmount: discountAmount ?? this.discountAmount,
      baseRateWithMargin: baseRateWithMargin ?? this.baseRateWithMargin,
      rate: rate ?? this.rate,
      amount: amount ?? this.amount,
      itemTaxTemplate: itemTaxTemplate ?? this.itemTaxTemplate,
      baseRate: baseRate ?? this.baseRate,
      baseAmount: baseAmount ?? this.baseAmount,
      pricingRules: pricingRules ?? this.pricingRules,
      isFreeItem: isFreeItem ?? this.isFreeItem,
      grantCommission: grantCommission ?? this.grantCommission,
      netRate: netRate ?? this.netRate,
      netAmount: netAmount ?? this.netAmount,
      baseNetRate: baseNetRate ?? this.baseNetRate,
      baseNetAmount: baseNetAmount ?? this.baseNetAmount,
      deliveredBySupplier: deliveredBySupplier ?? this.deliveredBySupplier,
      incomeAccount: incomeAccount ?? this.incomeAccount,
      isFixedAsset: isFixedAsset ?? this.isFixedAsset,
      asset: asset ?? this.asset,
      financeBook: financeBook ?? this.financeBook,
      expenseAccount: expenseAccount ?? this.expenseAccount,
      deferredRevenueAccount:
          deferredRevenueAccount ?? this.deferredRevenueAccount,
      serviceStopDate: serviceStopDate ?? this.serviceStopDate,
      enableDeferredRevenue:
          enableDeferredRevenue ?? this.enableDeferredRevenue,
      serviceStartDate: serviceStartDate ?? this.serviceStartDate,
      serviceEndDate: serviceEndDate ?? this.serviceEndDate,
      weightPerUnit: weightPerUnit ?? this.weightPerUnit,
      totalWeight: totalWeight ?? this.totalWeight,
      weightUom: weightUom ?? this.weightUom,
      warehouse: warehouse ?? this.warehouse,
      targetWarehouse: targetWarehouse ?? this.targetWarehouse,
      qualityInspection: qualityInspection ?? this.qualityInspection,
      serialAndBatchBundle: serialAndBatchBundle ?? this.serialAndBatchBundle,
      useSerialBatchFields: useSerialBatchFields ?? this.useSerialBatchFields,
      allowZeroValuationRate:
          allowZeroValuationRate ?? this.allowZeroValuationRate,
      itemTaxRate: itemTaxRate ?? this.itemTaxRate,
      actualBatchQty: actualBatchQty ?? this.actualBatchQty,
      actualQty: actualQty ?? this.actualQty,
      serialNo: serialNo ?? this.serialNo,
      batchNo: batchNo ?? this.batchNo,
      salesOrder: salesOrder ?? this.salesOrder,
      soDetail: soDetail ?? this.soDetail,
      posInvoiceItem: posInvoiceItem ?? this.posInvoiceItem,
      deliveryNote: deliveryNote ?? this.deliveryNote,
      dnDetail: dnDetail ?? this.dnDetail,
      deliveredQty: deliveredQty ?? this.deliveredQty,
      costCenter: costCenter ?? this.costCenter,
      project: project ?? this.project,
      pageBreak: pageBreak ?? this.pageBreak,
      parent: parent ?? this.parent,
      parentfield: parentfield ?? this.parentfield,
      parenttype: parenttype ?? this.parenttype,
      doctype: doctype ?? this.doctype,
      islocal: islocal ?? this.islocal,
      unsaved: unsaved ?? this.unsaved,
      hasMargin: hasMargin ?? this.hasMargin,
      childDocname: childDocname ?? this.childDocname,
      discountAccount: discountAccount ?? this.discountAccount,
      provisionalExpenseAccount:
          provisionalExpenseAccount ?? this.provisionalExpenseAccount,
      hasSerialNo: hasSerialNo ?? this.hasSerialNo,
      hasBatchNo: hasBatchNo ?? this.hasBatchNo,
      minOrderQty: minOrderQty ?? this.minOrderQty,
      updateStock: updateStock ?? this.updateStock,
      lastPurchaseRate: lastPurchaseRate ?? this.lastPurchaseRate,
      transactionDate: transactionDate ?? this.transactionDate,
      againstBlanketOrder: againstBlanketOrder ?? this.againstBlanketOrder,
      bomNo: bomNo ?? this.bomNo,
      manufacturer: manufacturer ?? this.manufacturer,
      manufacturerPartNo: manufacturerPartNo ?? this.manufacturerPartNo,
      freeItemData: freeItemData ?? this.freeItemData,
      stockUomRate: stockUomRate ?? this.stockUomRate,
      customPlu: customPlu ?? this.customPlu,
      mustBeWholeNumber: mustBeWholeNumber ?? this.mustBeWholeNumber,
      isStockItem: isStockItem ?? this.isStockItem,
      customTaxId: customTaxId ?? this.customTaxId,
      isSelected: isSelected ?? this.isSelected,
      allowNegativeStock: allowNegativeStock ?? this.allowNegativeStock,
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
      barcode,
      hasItemScanned,
      itemCode,
      itemName,
      customerItemCode,
      description,
      itemGroup,
      brand,
      image,
      qty,
      stockUom,
      uom,
      conversionFactor,
      stockQty,
      priceListRate,
      basePriceListRate,
      marginType,
      marginRateOrAmount,
      rateWithMargin,
      discountPercentage,
      discountAmount,
      baseRateWithMargin,
      rate,
      amount,
      itemTaxTemplate,
      baseRate,
      baseAmount,
      pricingRules,
      isFreeItem,
      grantCommission,
      netRate,
      netAmount,
      baseNetRate,
      baseNetAmount,
      deliveredBySupplier,
      incomeAccount,
      isFixedAsset,
      asset,
      financeBook,
      expenseAccount,
      deferredRevenueAccount,
      serviceStopDate,
      enableDeferredRevenue,
      serviceStartDate,
      serviceEndDate,
      weightPerUnit,
      totalWeight,
      weightUom,
      warehouse,
      targetWarehouse,
      qualityInspection,
      serialAndBatchBundle,
      useSerialBatchFields,
      allowZeroValuationRate,
      itemTaxRate,
      actualBatchQty,
      actualQty,
      serialNo,
      batchNo,
      salesOrder,
      soDetail,
      posInvoiceItem,
      deliveryNote,
      dnDetail,
      deliveredQty,
      costCenter,
      project,
      pageBreak,
      parent,
      parentfield,
      parenttype,
      doctype,
      islocal,
      unsaved,
      hasMargin,
      childDocname,
      discountAccount,
      provisionalExpenseAccount,
      hasSerialNo,
      hasBatchNo,
      minOrderQty,
      updateStock,
      lastPurchaseRate,
      transactionDate,
      againstBlanketOrder,
      bomNo,
      manufacturer,
      manufacturerPartNo,
      freeItemData,
      stockUomRate,
      customPlu,
      mustBeWholeNumber,
      isStockItem,
      customTaxId,
      isSelected,
      allowNegativeStock,
    ];
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is PosInvoiceItem && other.idx == idx;
  }

  @override
  int get hashCode => idx.hashCode;
}
