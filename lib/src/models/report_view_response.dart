class ReportViewResponse {
  ReportViewResponse({
    required this.message,
  });

  factory ReportViewResponse.fromJson(Map<String, dynamic> json) {
    return ReportViewResponse(
      message: (json['message'] as List)
          .map((item) => Report.fromJson(item as Map<String, dynamic>))
          .toList(),
    );
  }
  final List<Report> message;
}

class Report {
  Report({
    required this.name,
    required this.grandTotal,
    required this.status,
    required this.postingDate,
    required this.postingTime,
    required this.currency,
  });

  factory Report.fromJson(Map<String, dynamic> json) {
    return Report(
      name: json['name']?.toString() ?? '',
      grandTotal: (json['grand_total'] as num?)?.toDouble() ?? 0.0,
      status: json['status']?.toString() ?? '',
      postingDate: json['posting_date']?.toString() ?? '',
      postingTime: json['posting_time']?.toString() ?? '',
      currency: json['currency']?.toString() ?? '',
    );
  }
  final String name;
  final double grandTotal;
  final String status;
  final String postingDate;
  final String postingTime;
  final String currency;
}
