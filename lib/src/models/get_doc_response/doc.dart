import 'dart:convert';

import 'package:frappe_dart/src/models/get_doc_response/onload.dart';
import 'package:frappe_dart/src/models/get_doc_response/role.dart';
import 'package:frappe_dart/src/models/get_doc_response/social_login.dart';

class Doc {

  Doc({
    this.name,
    this.owner,
    this.creation,
    this.modified,
    this.modifiedBy,
    this.docstatus,
    this.idx,
    this.enabled,
    this.email,
    this.firstName,
    this.lastName,
    this.fullName,
    this.username,
    this.language,
    this.timeZone,
    this.sendWelcomeEmail,
    this.unsubscribed,
    this.muteSounds,
    this.deskTheme,
    this.searchBar,
    this.notifications,
    this.listSidebar,
    this.bulkActions,
    this.viewSwitcher,
    this.formSidebar,
    this.timeline,
    this.dashboard,
    this.newPassword,
    this.logoutAllSessions,
    this.documentFollowNotify,
    this.documentFollowFrequency,
    this.followCreatedDocuments,
    this.followCommentedDocuments,
    this.followLikedDocuments,
    this.followAssignedDocuments,
    this.followSharedDocuments,
    this.threadNotify,
    this.sendMeACopy,
    this.allowedInMentions,
    this.simultaneousSessions,
    this.lastIp,
    this.loginAfter,
    this.userType,
    this.lastActive,
    this.loginBefore,
    this.bypassRestrictIpCheckIf2faEnabled,
    this.lastLogin,
    this.lastKnownVersions,
    this.onboardingStatus,
    this.doctype,
    this.blockModules,
    this.roles,
    this.userEmails,
    this.defaults,
    this.socialLogins,
    this.onload,
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
  });

  factory Doc.fromMap(Map<String, dynamic> data) => Doc(
        name: data['name'] as String?,
        owner: data['owner'] as String?,
        creation: data['creation'] as String?,
        modified: data['modified'] as String?,
        modifiedBy: data['modified_by'] as String?,
        docstatus: data['docstatus'] as int?,
        idx: data['idx'] as int?,
        enabled: data['enabled'] as int?,
        email: data['email'] as String?,
        firstName: data['first_name'] as String?,
        lastName: data['last_name'] as String?,
        fullName: data['full_name'] as String?,
        username: data['username'] as String?,
        language: data['language'] as String?,
        timeZone: data['time_zone'] as String?,
        sendWelcomeEmail: data['send_welcome_email'] as int?,
        unsubscribed: data['unsubscribed'] as int?,
        muteSounds: data['mute_sounds'] as int?,
        deskTheme: data['desk_theme'] as String?,
        searchBar: data['search_bar'] as int?,
        notifications: data['notifications'] as int?,
        listSidebar: data['list_sidebar'] as int?,
        bulkActions: data['bulk_actions'] as int?,
        viewSwitcher: data['view_switcher'] as int?,
        formSidebar: data['form_sidebar'] as int?,
        timeline: data['timeline'] as int?,
        dashboard: data['dashboard'] as int?,
        newPassword: data['new_password'] as String?,
        logoutAllSessions: data['logout_all_sessions'] as int?,
        documentFollowNotify: data['document_follow_notify'] as int?,
        documentFollowFrequency: data['document_follow_frequency'] as String?,
        followCreatedDocuments: data['follow_created_documents'] as int?,
        followCommentedDocuments: data['follow_commented_documents'] as int?,
        followLikedDocuments: data['follow_liked_documents'] as int?,
        followAssignedDocuments: data['follow_assigned_documents'] as int?,
        followSharedDocuments: data['follow_shared_documents'] as int?,
        threadNotify: data['thread_notify'] as int?,
        sendMeACopy: data['send_me_a_copy'] as int?,
        allowedInMentions: data['allowed_in_mentions'] as int?,
        simultaneousSessions: data['simultaneous_sessions'] as int?,
        lastIp: data['last_ip'] as String?,
        loginAfter: data['login_after'] as int?,
        userType: data['user_type'] as String?,
        lastActive: data['last_active'] as String?,
        loginBefore: data['login_before'] as int?,
        bypassRestrictIpCheckIf2faEnabled:
            data['bypass_restrict_ip_check_if_2fa_enabled'] as int?,
        lastLogin: data['last_login'] as String?,
        lastKnownVersions: data['last_known_versions'] as String?,
        onboardingStatus: data['onboarding_status'] as String?,
        doctype: data['doctype'] as String?,
        blockModules: data['block_modules'] as List<dynamic>?,
        roles: (data['roles'] as List<dynamic>?)
            ?.map((e) => Role.fromMap(e as Map<String, dynamic>))
            .toList(),
        userEmails: data['user_emails'] as List<dynamic>?,
        defaults: data['defaults'] as List<dynamic>?,
        socialLogins: (data['social_logins'] as List<dynamic>?)
            ?.map((e) => SocialLogin.fromMap(e as Map<String, dynamic>))
            .toList(),
        onload: data['__onload'] == null
            ? null
            : Onload.fromMap(data['__onload'] as Map<String, dynamic>),
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
      );

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Doc].
  factory Doc.fromJson(String data) {
    return Doc.fromMap(json.decode(data) as Map<String, dynamic>);
  }
  String? name;
  String? owner;
  String? creation;
  String? modified;
  String? modifiedBy;
  int? docstatus;
  int? idx;
  int? enabled;
  String? email;
  String? firstName;
  String? lastName;
  String? fullName;
  String? username;
  String? language;
  String? timeZone;
  int? sendWelcomeEmail;
  int? unsubscribed;
  int? muteSounds;
  String? deskTheme;
  int? searchBar;
  int? notifications;
  int? listSidebar;
  int? bulkActions;
  int? viewSwitcher;
  int? formSidebar;
  int? timeline;
  int? dashboard;
  String? newPassword;
  int? logoutAllSessions;
  int? documentFollowNotify;
  String? documentFollowFrequency;
  int? followCreatedDocuments;
  int? followCommentedDocuments;
  int? followLikedDocuments;
  int? followAssignedDocuments;
  int? followSharedDocuments;
  int? threadNotify;
  int? sendMeACopy;
  int? allowedInMentions;
  int? simultaneousSessions;
  String? lastIp;
  int? loginAfter;
  String? userType;
  String? lastActive;
  int? loginBefore;
  int? bypassRestrictIpCheckIf2faEnabled;
  String? lastLogin;
  String? lastKnownVersions;
  String? onboardingStatus;
  String? doctype;
  List<dynamic>? blockModules;
  List<Role>? roles;
  List<dynamic>? userEmails;
  List<dynamic>? defaults;
  List<SocialLogin>? socialLogins;
  Onload? onload;
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
  String? lastSyncOn;
  String? filters_json;
  String? dynamic_filters_json;

  Map<String, dynamic> toMap() => {
        'name': name,
        'owner': owner,
        'creation': creation,
        'modified': modified,
        'modified_by': modifiedBy,
        'docstatus': docstatus,
        'idx': idx,
        'enabled': enabled,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'full_name': fullName,
        'username': username,
        'language': language,
        'time_zone': timeZone,
        'send_welcome_email': sendWelcomeEmail,
        'unsubscribed': unsubscribed,
        'mute_sounds': muteSounds,
        'desk_theme': deskTheme,
        'search_bar': searchBar,
        'notifications': notifications,
        'list_sidebar': listSidebar,
        'bulk_actions': bulkActions,
        'view_switcher': viewSwitcher,
        'form_sidebar': formSidebar,
        'timeline': timeline,
        'dashboard': dashboard,
        'new_password': newPassword,
        'logout_all_sessions': logoutAllSessions,
        'document_follow_notify': documentFollowNotify,
        'document_follow_frequency': documentFollowFrequency,
        'follow_created_documents': followCreatedDocuments,
        'follow_commented_documents': followCommentedDocuments,
        'follow_liked_documents': followLikedDocuments,
        'follow_assigned_documents': followAssignedDocuments,
        'follow_shared_documents': followSharedDocuments,
        'thread_notify': threadNotify,
        'send_me_a_copy': sendMeACopy,
        'allowed_in_mentions': allowedInMentions,
        'simultaneous_sessions': simultaneousSessions,
        'last_ip': lastIp,
        'login_after': loginAfter,
        'user_type': userType,
        'last_active': lastActive,
        'login_before': loginBefore,
        'bypass_restrict_ip_check_if_2fa_enabled':
            bypassRestrictIpCheckIf2faEnabled,
        'last_login': lastLogin,
        'last_known_versions': lastKnownVersions,
        'onboarding_status': onboardingStatus,
        'doctype': doctype,
        'block_modules': blockModules,
        'roles': roles?.map((e) => e.toMap()).toList(),
        'user_emails': userEmails,
        'defaults': defaults,
        'social_logins': socialLogins?.map((e) => e.toMap()).toList(),
        '__onload': onload?.toMap(),
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
      };

  /// `dart:convert`
  ///
  /// Converts [Doc] to a JSON string.
  String toJson() => json.encode(toMap());
}
