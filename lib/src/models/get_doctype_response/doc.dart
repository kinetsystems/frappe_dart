import 'dart:convert';

import 'package:frappe_dart/src/models/get_doctype_response/dashboard.dart';
import 'package:frappe_dart/src/models/get_doctype_response/field.dart';
import 'package:frappe_dart/src/models/get_doctype_response/link.dart';
import 'package:frappe_dart/src/models/get_doctype_response/permission.dart';
import 'package:frappe_dart/src/models/get_doctype_response/table_field.dart';

class Doc {
  Doc({
    this.doctype,
    this.name,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.owner,
    this.docstatus,
    this.idx,
    this.searchFields,
    this.issingle,
    this.isVirtual,
    this.isTree,
    this.istable,
    this.editableGrid,
    this.trackChanges,
    this.module,
    this.titleField,
    this.imageField,
    this.sortField,
    this.sortOrder,
    this.description,
    this.readOnly,
    this.inCreate,
    this.allowCopy,
    this.allowRename,
    this.allowImport,
    this.hideToolbar,
    this.trackSeen,
    this.maxAttachments,
    this.icon,
    this.engine,
    this.isSubmittable,
    this.showNameInGlobalSearch,
    this.custom,
    this.beta,
    this.hasWebView,
    this.allowGuestToView,
    this.route,
    this.emailAppendTo,
    this.showTitleFieldInLink,
    this.migrationHash,
    this.translatedDoctype,
    this.isCalendarAndGantt,
    this.quickEntry,
    this.trackViews,
    this.queueInBackground,
    this.allowEventsInTimeline,
    this.allowAutoRepeat,
    this.makeAttachmentsPublic,
    this.forceReRouteToDefaultView,
    this.showPreviewPopup,
    this.indexWebPagesForSearch,
    this.fields,
    this.permissions,
    this.links,
    this.tableFields,
    this.js,
    this.listJs,
    this.customJs,
    this.customListJs,
    this.assetsLoaded,
    this.actions,
    this.states,
    this.css,
    this.calendarJs,
    this.mapJs,
    this.linkedWith,
    this.messages,
    this.printFormats,
    this.workflowDocs,
    this.formGridTemplates,
    this.listviewTemplate,
    this.treeJs,
    this.dashboard,
    this.kanbanColumnFields,
    this.templates,
    this.autoname,
    this.documentType,
  });

  factory Doc.fromMap(Map<String, dynamic> data) => Doc(
        doctype: data['doctype'] as String?,
        name: data['name'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        owner: data['owner'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        searchFields: data['search_fields'] as String?,
        issingle: data['issingle'] as int?,
        isVirtual: data['is_virtual'] as int?,
        isTree: data['is_tree'] as int?,
        istable: data['istable'] as int?,
        editableGrid: data['editable_grid'] as int?,
        trackChanges: data['track_changes'] as int?,
        module: data['module'] as String?,
        titleField: data['title_field'] as String?,
        imageField: data['image_field'] as String?,
        sortField: data['sort_field'] as String?,
        sortOrder: data['sort_order'] as String?,
        description: data['description'] as String?,
        readOnly: data['read_only'] as int?,
        inCreate: data['in_create'] as int?,
        allowCopy: data['allow_copy'] as int?,
        allowRename: data['allow_rename'] as int?,
        allowImport: data['allow_import'] as int?,
        hideToolbar: data['hide_toolbar'] as int?,
        trackSeen: data['track_seen'] as int?,
        maxAttachments: data['max_attachments'] as int?,
        icon: data['icon'] as String?,
        engine: data['engine'] as String?,
        isSubmittable: data['is_submittable'] as int?,
        showNameInGlobalSearch: data['show_name_in_global_search'] as int?,
        custom: data['custom'] as int?,
        beta: data['beta'] as int?,
        hasWebView: data['has_web_view'] as int?,
        allowGuestToView: data['allow_guest_to_view'] as int?,
        route: data['route'] as String?,
        emailAppendTo: data['email_append_to'] as int?,
        showTitleFieldInLink: data['show_title_field_in_link'] as int?,
        migrationHash: data['migration_hash'] as String?,
        translatedDoctype: data['translated_doctype'] as int?,
        isCalendarAndGantt: data['is_calendar_and_gantt'] as int?,
        quickEntry: data['quick_entry'] as int?,
        trackViews: data['track_views'] as int?,
        queueInBackground: data['queue_in_background'] as int?,
        allowEventsInTimeline: data['allow_events_in_timeline'] as int?,
        allowAutoRepeat: data['allow_auto_repeat'] as int?,
        makeAttachmentsPublic: data['make_attachments_public'] as int?,
        forceReRouteToDefaultView:
            data['force_re_route_to_default_view'] as int?,
        showPreviewPopup: data['show_preview_popup'] as int?,
        indexWebPagesForSearch: data['index_web_pages_for_search'] as int?,
        fields: (data['fields'] as List<dynamic>?)
            ?.map((e) => Field.fromMap(e as Map<String, dynamic>))
            .toList(),
        permissions: (data['permissions'] as List<dynamic>?)
            ?.map((e) => Permission.fromMap(e as Map<String, dynamic>))
            .toList(),
        links: (data['links'] as List<dynamic>?)
            ?.map((e) => Link.fromMap(e as Map<String, dynamic>))
            .toList(),
        tableFields: (data['_table_fields'] as List<dynamic>?)
            ?.map((e) => TableField.fromMap(e as Map<String, dynamic>))
            .toList(),
        js: data['__js'] as String?,
        listJs: data['__list_js'] as String?,
        customJs: data['__custom_js'] as String?,
        customListJs: data['__custom_list_js'] as String?,
        assetsLoaded: data['__assets_loaded'] as bool?,
        actions: data['actions'] as List<dynamic>?,
        states: data['states'] as List<dynamic>?,
        css: data['__css'] as dynamic,
        calendarJs: data['__calendar_js'] as dynamic,
        mapJs: data['__map_js'] as dynamic,
        linkedWith: data['__linked_with'] as dynamic,
        messages: data['__messages'] as dynamic,
        printFormats: data['__print_formats'] as List<dynamic>?,
        workflowDocs: data['__workflow_docs'] as List<dynamic>?,
        formGridTemplates: data['__form_grid_templates'] as dynamic,
        listviewTemplate: data['__listview_template'] as dynamic,
        treeJs: data['__tree_js'] as dynamic,
        dashboard: data['__dashboard'] == null
            ? null
            : Dashboard.fromMap(data['__dashboard'] as Map<String, dynamic>),
        kanbanColumnFields: data['__kanban_column_fields'] as List<dynamic>?,
        templates: data['__templates'] as dynamic,
        autoname: data['autoname'] as String?,
        documentType: data['document_type'] as String?,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Doc].
  factory Doc.fromJson(String data) {
    return Doc.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? doctype;
  String? name;
  String? creation;
  String? modified;
  String? modifiedBy;
  String? owner;
  int? docstatus;
  int? idx;
  String? searchFields;
  int? issingle;
  int? isVirtual;
  int? isTree;
  int? istable;
  int? editableGrid;
  int? trackChanges;
  String? module;
  String? titleField;
  String? imageField;
  String? sortField;
  String? sortOrder;
  String? description;
  int? readOnly;
  int? inCreate;
  int? allowCopy;
  int? allowRename;
  int? allowImport;
  int? hideToolbar;
  int? trackSeen;
  int? maxAttachments;
  String? icon;
  String? engine;
  int? isSubmittable;
  int? showNameInGlobalSearch;
  int? custom;
  int? beta;
  int? hasWebView;
  int? allowGuestToView;
  String? route;
  int? emailAppendTo;
  int? showTitleFieldInLink;
  String? migrationHash;
  int? translatedDoctype;
  int? isCalendarAndGantt;
  int? quickEntry;
  int? trackViews;
  int? queueInBackground;
  int? allowEventsInTimeline;
  int? allowAutoRepeat;
  int? makeAttachmentsPublic;
  int? forceReRouteToDefaultView;
  int? showPreviewPopup;
  int? indexWebPagesForSearch;
  List<Field>? fields;
  List<Permission>? permissions;
  List<Link>? links;
  List<TableField>? tableFields;
  String? js;
  String? listJs;
  String? customJs;
  String? customListJs;
  bool? assetsLoaded;
  List<dynamic>? actions;
  List<dynamic>? states;
  dynamic css;
  dynamic calendarJs;
  dynamic mapJs;
  dynamic linkedWith;
  dynamic messages;
  List<dynamic>? printFormats;
  List<dynamic>? workflowDocs;
  dynamic formGridTemplates;
  dynamic listviewTemplate;
  dynamic treeJs;
  Dashboard? dashboard;
  List<dynamic>? kanbanColumnFields;
  dynamic templates;
  String? autoname;
  String? documentType;

  Map<String, dynamic> toMap() => {
        'doctype': doctype,
        'name': name,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'owner': owner,
        'docstatus': docstatus,
        'idx': idx,
        'search_fields': searchFields,
        'issingle': issingle,
        'is_virtual': isVirtual,
        'is_tree': isTree,
        'istable': istable,
        'editable_grid': editableGrid,
        'track_changes': trackChanges,
        'module': module,
        'title_field': titleField,
        'image_field': imageField,
        'sort_field': sortField,
        'sort_order': sortOrder,
        'description': description,
        'read_only': readOnly,
        'in_create': inCreate,
        'allow_copy': allowCopy,
        'allow_rename': allowRename,
        'allow_import': allowImport,
        'hide_toolbar': hideToolbar,
        'track_seen': trackSeen,
        'max_attachments': maxAttachments,
        'icon': icon,
        'engine': engine,
        'is_submittable': isSubmittable,
        'show_name_in_global_search': showNameInGlobalSearch,
        'custom': custom,
        'beta': beta,
        'has_web_view': hasWebView,
        'allow_guest_to_view': allowGuestToView,
        'route': route,
        'email_append_to': emailAppendTo,
        'show_title_field_in_link': showTitleFieldInLink,
        'migration_hash': migrationHash,
        'translated_doctype': translatedDoctype,
        'is_calendar_and_gantt': isCalendarAndGantt,
        'quick_entry': quickEntry,
        'track_views': trackViews,
        'queue_in_background': queueInBackground,
        'allow_events_in_timeline': allowEventsInTimeline,
        'allow_auto_repeat': allowAutoRepeat,
        'make_attachments_public': makeAttachmentsPublic,
        'force_re_route_to_default_view': forceReRouteToDefaultView,
        'show_preview_popup': showPreviewPopup,
        'index_web_pages_for_search': indexWebPagesForSearch,
        'fields': fields?.map((e) => e.toMap()).toList(),
        'permissions': permissions?.map((e) => e.toMap()).toList(),
        'links': links?.map((e) => e.toMap()).toList(),
        '_table_fields': tableFields?.map((e) => e.toMap()).toList(),
        '__js': js,
        '__list_js': listJs,
        '__custom_js': customJs,
        '__custom_list_js': customListJs,
        '__assets_loaded': assetsLoaded,
        'actions': actions,
        'states': states,
        '__css': css,
        '__calendar_js': calendarJs,
        '__map_js': mapJs,
        '__linked_with': linkedWith,
        '__messages': messages,
        '__print_formats': printFormats,
        '__workflow_docs': workflowDocs,
        '__form_grid_templates': formGridTemplates,
        '__listview_template': listviewTemplate,
        '__tree_js': treeJs,
        '__dashboard': dashboard?.toMap(),
        '__kanban_column_fields': kanbanColumnFields,
        '__templates': templates,
        'autoname': autoname,
        'document_type': documentType,
      };

  /// `dart:convert`
  ///
  /// Converts [Doc] to a JSON string.
  String toJson() => json.encode(toMap());
}
