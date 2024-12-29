import 'dart:convert';

class NumberCardRequest {
  Doc? doc;
  

  NumberCardRequest({
    this.doc,
  });

  factory NumberCardRequest.fromMap(Map<String, dynamic> data) {
    return NumberCardRequest(
      doc: data['doc'] == null
          ? null
          : Doc.fromMap(data['doc'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() => {
        'doc': doc?.toMap(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [NumberCardRequest].
  factory NumberCardRequest.fromJson(String data) {
    return NumberCardRequest.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [NumberCardRequest] to a JSON string.
  String toJson() => json.encode(toMap());
}

class Doc {
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  int? isStandard;
  String? module;
  String? label;
  String? type;
  String? function;
  String? aggregateFunctionBasedOn;
  String? documentType;
  int? isPublic;
  int? showPercentageStats;
  String? statsTimeInterval;
  String? filtersJson;
  String? dynamicFiltersJson;
  String? doctype;
  DateTime? lastSyncOn;

  Doc({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.isStandard,
    this.module,
    this.label,
    this.type,
    this.function,
    this.aggregateFunctionBasedOn,
    this.documentType,
    this.isPublic,
    this.showPercentageStats,
    this.statsTimeInterval,
    this.filtersJson,
    this.dynamicFiltersJson,
    this.doctype,
    this.lastSyncOn,
  });

  factory Doc.fromMap(Map<String, dynamic> data) => Doc(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        isStandard: data['is_standard'] as int?,
        module: data['module'] as String?,
        label: data['label'] as String?,
        type: data['type'] as String?,
        function: data['function'] as String?,
        aggregateFunctionBasedOn:
            data['aggregate_function_based_on'] as String?,
        documentType: data['document_type'] as String?,
        isPublic: data['is_public'] as int?,
        showPercentageStats: data['show_percentage_stats'] as int?,
        statsTimeInterval: data['stats_time_interval'] as String?,
        filtersJson: data['filters_json'] as String?,
        dynamicFiltersJson: data['dynamic_filters_json'] as String?,
        doctype: data['doctype'] as String?,
        lastSyncOn: data['__last_sync_on'] == null
            ? null
            : DateTime.parse(data['__last_sync_on'] as String),
      );

  Map<String, dynamic> toMap() => {
        'name': name,
        'owner': owner,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'docstatus': docstatus,
        'idx': idx,
        'is_standard': isStandard,
        'module': module,
        'label': label,
        'type': type,
        'function': function,
        'aggregate_function_based_on': aggregateFunctionBasedOn,
        'document_type': documentType,
        'is_public': isPublic,
        'show_percentage_stats': showPercentageStats,
        'stats_time_interval': statsTimeInterval,
        'filters_json': filtersJson,
        'dynamic_filters_json': dynamicFiltersJson,
        'doctype': doctype,
        '__last_sync_on': lastSyncOn?.toIso8601String(),
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Doc].
  factory Doc.fromJson(String data) {
    return Doc.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Doc] to a JSON string.
  String toJson() => json.encode(toMap());
}
