import 'dart:convert';

class TableField {
  TableField({
    this.doctype,
    this.name,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.owner,
    this.docstatus,
    this.parent,
    this.parentfield,
    this.parenttype,
    this.idx,
    this.fieldname,
    this.label,
    this.fieldtype,
    this.options,
    this.searchIndex,
    this.showDashboard,
    this.hidden,
    this.setOnlyOnce,
    this.allowInQuickEntry,
    this.printHide,
    this.reportHide,
    this.reqd,
    this.bold,
    this.inGlobalSearch,
    this.collapsible,
    this.unique,
    this.noCopy,
    this.allowOnSubmit,
    this.showPreviewPopup,
    this.permlevel,
    this.ignoreUserPermissions,
    this.columns,
    this.inListView,
    this.fetchIfEmpty,
    this.inFilter,
    this.rememberLastSelectedValue,
    this.ignoreXssFilter,
    this.printHideIfNoValue,
    this.allowBulkEdit,
    this.inStandardFilter,
    this.inPreview,
    this.readOnly,
    this.length,
    this.translatable,
    this.hideBorder,
    this.hideDays,
    this.hideSeconds,
    this.nonNegative,
    this.isVirtual,
    this.sortOptions,
    this.showOnTimeline,
    this.makeAttachmentPublic,
    this.fields,
    this.permissions,
    this.actions,
    this.links,
    this.states,
    this.description,
  });

  factory TableField.fromMap(Map<String, dynamic> data) => TableField(
        doctype: data['doctype'] as String?,
        name: data['name'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        owner: data['owner'] as String?,
        docstatus: data['docstatus'] as int?,
        parent: data['parent'] as String?,
        parentfield: data['parentfield'] as String?,
        parenttype: data['parenttype'] as String?,
        idx: data['idx'] as int?,
        fieldname: data['fieldname'] as String?,
        label: data['label'] as String?,
        fieldtype: data['fieldtype'] as String?,
        options: data['options'] as String?,
        searchIndex: data['search_index'] as int?,
        showDashboard: data['show_dashboard'] as int?,
        hidden: data['hidden'] as int?,
        setOnlyOnce: data['set_only_once'] as int?,
        allowInQuickEntry: data['allow_in_quick_entry'] as int?,
        printHide: data['print_hide'] as int?,
        reportHide: data['report_hide'] as int?,
        reqd: data['reqd'] as int?,
        bold: data['bold'] as int?,
        inGlobalSearch: data['in_global_search'] as int?,
        collapsible: data['collapsible'] as int?,
        unique: data['unique'] as int?,
        noCopy: data['no_copy'] as int?,
        allowOnSubmit: data['allow_on_submit'] as int?,
        showPreviewPopup: data['show_preview_popup'] as int?,
        permlevel: data['permlevel'] as int?,
        ignoreUserPermissions: data['ignore_user_permissions'] as int?,
        columns: data['columns'] as int?,
        inListView: data['in_list_view'] as int?,
        fetchIfEmpty: data['fetch_if_empty'] as int?,
        inFilter: data['in_filter'] as int?,
        rememberLastSelectedValue: data['remember_last_selected_value'] as int?,
        ignoreXssFilter: data['ignore_xss_filter'] as int?,
        printHideIfNoValue: data['print_hide_if_no_value'] as int?,
        allowBulkEdit: data['allow_bulk_edit'] as int?,
        inStandardFilter: data['in_standard_filter'] as int?,
        inPreview: data['in_preview'] as int?,
        readOnly: data['read_only'] as int?,
        length: data['length'] as int?,
        translatable: data['translatable'] as int?,
        hideBorder: data['hide_border'] as int?,
        hideDays: data['hide_days'] as int?,
        hideSeconds: data['hide_seconds'] as int?,
        nonNegative: data['non_negative'] as int?,
        isVirtual: data['is_virtual'] as int?,
        sortOptions: data['sort_options'] as int?,
        showOnTimeline: data['show_on_timeline'] as int?,
        makeAttachmentPublic: data['make_attachment_public'] as int?,
        fields: data['fields'] as List<dynamic>?,
        permissions: data['permissions'] as List<dynamic>?,
        actions: data['actions'] as List<dynamic>?,
        links: data['links'] as List<dynamic>?,
        states: data['states'] as List<dynamic>?,
        description: data['description'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [TableField].
  factory TableField.fromJson(String data) {
    return TableField.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? doctype;
  String? name;
  String? creation;
  String? modified;
  String? modifiedBy;
  String? owner;
  int? docstatus;
  String? parent;
  String? parentfield;
  String? parenttype;
  int? idx;
  String? fieldname;
  String? label;
  String? fieldtype;
  String? options;
  int? searchIndex;
  int? showDashboard;
  int? hidden;
  int? setOnlyOnce;
  int? allowInQuickEntry;
  int? printHide;
  int? reportHide;
  int? reqd;
  int? bold;
  int? inGlobalSearch;
  int? collapsible;
  int? unique;
  int? noCopy;
  int? allowOnSubmit;
  int? showPreviewPopup;
  int? permlevel;
  int? ignoreUserPermissions;
  int? columns;
  int? inListView;
  int? fetchIfEmpty;
  int? inFilter;
  int? rememberLastSelectedValue;
  int? ignoreXssFilter;
  int? printHideIfNoValue;
  int? allowBulkEdit;
  int? inStandardFilter;
  int? inPreview;
  int? readOnly;
  int? length;
  int? translatable;
  int? hideBorder;
  int? hideDays;
  int? hideSeconds;
  int? nonNegative;
  int? isVirtual;
  int? sortOptions;
  int? showOnTimeline;
  int? makeAttachmentPublic;
  List<dynamic>? fields;
  List<dynamic>? permissions;
  List<dynamic>? actions;
  List<dynamic>? links;
  List<dynamic>? states;
  String? description;

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
        'name': name,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'owner': owner,
        'docstatus': docstatus,
        'parent': parent,
        'parentfield': parentfield,
        'parenttype': parenttype,
        'idx': idx,
        'fieldname': fieldname,
        'label': label,
        'fieldtype': fieldtype,
        'options': options,
        'search_index': searchIndex,
        'show_dashboard': showDashboard,
        'hidden': hidden,
        'set_only_once': setOnlyOnce,
        'allow_in_quick_entry': allowInQuickEntry,
        'print_hide': printHide,
        'report_hide': reportHide,
        'reqd': reqd,
        'bold': bold,
        'in_global_search': inGlobalSearch,
        'collapsible': collapsible,
        'unique': unique,
        'no_copy': noCopy,
        'allow_on_submit': allowOnSubmit,
        'show_preview_popup': showPreviewPopup,
        'permlevel': permlevel,
        'ignore_user_permissions': ignoreUserPermissions,
        'columns': columns,
        'in_list_view': inListView,
        'fetch_if_empty': fetchIfEmpty,
        'in_filter': inFilter,
        'remember_last_selected_value': rememberLastSelectedValue,
        'ignore_xss_filter': ignoreXssFilter,
        'print_hide_if_no_value': printHideIfNoValue,
        'allow_bulk_edit': allowBulkEdit,
        'in_standard_filter': inStandardFilter,
        'in_preview': inPreview,
        'read_only': readOnly,
        'length': length,
        'translatable': translatable,
        'hide_border': hideBorder,
        'hide_days': hideDays,
        'hide_seconds': hideSeconds,
        'non_negative': nonNegative,
        'is_virtual': isVirtual,
        'sort_options': sortOptions,
        'show_on_timeline': showOnTimeline,
        'make_attachment_public': makeAttachmentPublic,
        'fields': fields,
        'permissions': permissions,
        'actions': actions,
        'links': links,
        'states': states,
        'description': description,
      };

  /// `dart:convert`
  ///
  /// Converts [TableField] to a JSON string.
  String toJson() => json.encode(toMap());
}
