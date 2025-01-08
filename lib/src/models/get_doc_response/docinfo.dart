import 'dart:convert';

import 'package:frappe_dart/src/models/get_doc_response/permissions.dart';

class Docinfo {
  Docinfo({
    this.comments,
    this.shared,
    this.assignmentLogs,
    this.attachmentLogs,
    this.infoLogs,
    this.likeLogs,
    this.workflowLogs,
    this.doctype,
    this.name,
    this.attachments,
    this.communications,
    this.automatedMessages,
    this.versions,
    this.assignments,
    this.permissions,
    this.views,
    this.energyPointLogs,
    this.additionalTimelineContent,
    this.milestones,
    this.isDocumentFollowed,
    this.tags,
    this.documentEmail,
  });

  factory Docinfo.fromMap(Map<String, dynamic> data) => Docinfo(
        comments: data['comments'] as List<dynamic>?,
        shared: data['shared'] as List<dynamic>?,
        assignmentLogs: data['assignment_logs'] as List<dynamic>?,
        attachmentLogs: data['attachment_logs'] as List<dynamic>?,
        infoLogs: data['info_logs'] as List<dynamic>?,
        likeLogs: data['like_logs'] as List<dynamic>?,
        workflowLogs: data['workflow_logs'] as List<dynamic>?,
        doctype: data['doctype'] as String?,
        name: data['name'] as String?,
        attachments: data['attachments'] as List<dynamic>?,
        communications: data['communications'] as List<dynamic>?,
        automatedMessages: data['automated_messages'] as List<dynamic>?,
        versions: data['versions'] as List<dynamic>?,
        assignments: data['assignments'] as List<dynamic>?,
        permissions: data['permissions'] == null
            ? null
            : Permissions.fromMap(data['permissions'] as Map<String, dynamic>),
        views: data['views'] as List<dynamic>?,
        energyPointLogs: data['energy_point_logs'] as List<dynamic>?,
        additionalTimelineContent:
            data['additional_timeline_content'] as List<dynamic>?,
        milestones: data['milestones'] as List<dynamic>?,
        isDocumentFollowed: data['is_document_followed'] as dynamic,
        tags: data['tags'] as String?,
        documentEmail: data['document_email'] as dynamic,
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Docinfo].
  factory Docinfo.fromJson(String data) {
    return Docinfo.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  List<dynamic>? comments;
  List<dynamic>? shared;
  List<dynamic>? assignmentLogs;
  List<dynamic>? attachmentLogs;
  List<dynamic>? infoLogs;
  List<dynamic>? likeLogs;
  List<dynamic>? workflowLogs;
  String? doctype;
  String? name;
  List<dynamic>? attachments;
  List<dynamic>? communications;
  List<dynamic>? automatedMessages;
  List<dynamic>? versions;
  List<dynamic>? assignments;
  Permissions? permissions;
  List<dynamic>? views;
  List<dynamic>? energyPointLogs;
  List<dynamic>? additionalTimelineContent;
  List<dynamic>? milestones;
  dynamic isDocumentFollowed;
  String? tags;
  dynamic documentEmail;

  Map<String, dynamic> toMap() => {
        'comments': comments,
        'shared': shared,
        'assignment_logs': assignmentLogs,
        'attachment_logs': attachmentLogs,
        'info_logs': infoLogs,
        'like_logs': likeLogs,
        'workflow_logs': workflowLogs,
        'doctype': doctype,
        'name': name,
        'attachments': attachments,
        'communications': communications,
        'automated_messages': automatedMessages,
        'versions': versions,
        'assignments': assignments,
        'permissions': permissions?.toMap(),
        'views': views,
        'energy_point_logs': energyPointLogs,
        'additional_timeline_content': additionalTimelineContent,
        'milestones': milestones,
        'is_document_followed': isDocumentFollowed,
        'tags': tags,
        'document_email': documentEmail,
      };

  /// `dart:convert`
  ///
  /// Converts [Docinfo] to a JSON string.
  String toJson() => json.encode(toMap());
}
