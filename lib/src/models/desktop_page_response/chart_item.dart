import 'dart:convert';

class ChartItem {
  ChartItem({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.chartName,
    this.label,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.doctype,
  });

  factory ChartItem.fromMap(Map<String, dynamic> data) => ChartItem(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        chartName: data['chart_name'] as String?,
        label: data['label'] as String?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        doctype: data['doctype'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ChartItem].
  factory ChartItem.fromJson(String data) {
    return ChartItem.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  String? chartName;
  String? label;
  String? parent;
  String? parentfield;
  String? parenttype;
  String? doctype;

  Map<String, dynamic> toMap() => {
        'name': name,
        'owner': owner,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'docstatus': docstatus,
        'idx': idx,
        'chart_name': chartName,
        'label': label,
        'parent': parent,
        'parentfield': parentfield,
        'parenttype': parenttype,
        'doctype': doctype,
      };

  /// `dart:convert`
  ///
  /// Converts [ChartItem] to a JSON string.
  String toJson() => json.encode(toMap());
}
