class ItemFromResponse {
  ItemFromResponse({
    required this.customer,
    required this.status,
    required this.postingDate,
    required this.name,
    required this.part_name,
    required this.customerName,
    this.orderType = '',
    this.territory,
    this.company = '',
    this.baseGrandTotal,
  });

  factory ItemFromResponse.fromJson(Map<String, dynamic> json) {
    return ItemFromResponse(
      customer: json['customer'].toString(),
      status: json['status'].toString(),
      territory: json['territory']?.toString(),
      part_name:
          json['party_name'] != '' ? json['party_name'].toString() : null,
      postingDate: json['posting_date'] != null
          ? DateTime.tryParse(json['posting_date'].toString())
          : null,
      name: json['name'].toString(),
      customerName: json['customer_name'].toString(),
      baseGrandTotal: json['base_grand_total'] != null
          ? (json['base_grand_total'] as num).toDouble()
          : null,
    );
  }

  final String customer;
  final String orderType;
  final String status;
  final String? territory;
  final String? part_name;
  final DateTime? postingDate;
  final String company;
  final String name;
  final String customerName;
  final double? baseGrandTotal;
}
