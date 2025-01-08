import 'dart:convert';

import 'package:frappe_dart/frappe_dart.dart';
import 'package:frappe_dart/src/frappe_api.dart';
import 'package:http/http.dart' as http;

/// A class that implements the Frappe API for version 15.
class FrappeV15 implements FrappeApi {
  /// Creates a new instance of [FrappeV15].
  FrappeV15({
    required String baseUrl,
    String? cookie,
  })  : _baseUrl = baseUrl,
        _cookie = cookie;

  String _baseUrl;
  String? _cookie;

  /// The base URL of the Frappe instance.
  String get baseUrl => _baseUrl;

  /// The cookie used for authentication.
  String? get cookie => _cookie;

  set baseUrl(String newBaseUrl) {
    _baseUrl = newBaseUrl;
  }

  set cookie(String? newCookie) {
    _cookie = newCookie;
  }

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final url = Uri.parse('$_baseUrl/api/method/login');
    try {
      // Sending the POST request
      final response = await http.post(
        url,
        body: loginRequest.toMap(),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      );

      // Checking the response status
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body) as Map<String, dynamic>;

        // Extracting user ID from cookies if available
        final cookies = response.headers['set-cookie'];
        if (cookies != null) {
          final userId = _extractUserIdFromCookies(cookies);
          if (userId != null) {
            responseBody['user_id'] = userId;
            responseBody['cookie'] = cookies;
          }
        }

        // Returning the parsed response
        return LoginResponse.fromJson(responseBody);
      } else {
        throw Exception(
          'Failed to login. HTTP Status: ${response.statusCode}, Body: ${response.body}',
        );
      }
    } catch (e) {
      throw Exception('An error occurred during login: $e');
    }
  }

  @override
  Future<http.Response> logout() async {
    final url = Uri.parse(
      '$_baseUrl/api/method/logout',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Cookie': _cookie ?? '',
        },
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception(
          'Failed to logout. HTTP Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while trying to logout: $e',
      );
    }
  }

  // Helper method to extract user ID from cookies
  String? _extractUserIdFromCookies(String cookies) {
    final cookieParts = cookies.split(';');
    for (final part in cookieParts) {
      if (part.trim().startsWith('SameSite=Lax,user_id=')) {
        return Uri.decodeComponent(
          part.trim().substring('SameSite=Lax,user_id='.length),
        );
      }
    }
    return null;
  }

  @override
  Future<DeskSidebarItemsResponse> getDeskSideBarItems() async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.desk.desktop.get_workspace_sidebar_items',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Cookie': _cookie ?? '',
        },
      );

      if (response.statusCode == 200) {
        return DeskSidebarItemsResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get desk sidebar items. HTTP Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving desk sidebar items: $e',
      );
    }
  }

  @override
  Future<DesktopPageResponse> getDesktopPage(
    DesktopPageRequest deskPageRequest,
  ) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.desk.desktop.get_desktop_page',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': _cookie ?? '',
        },
        body: {
          'page': deskPageRequest.toJson(),
        },
      );

      if (response.statusCode == 200) {
        return DesktopPageResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get desk page. HTTP Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving desk page: $e',
      );
    }
  }

  @override
  Future<NumberCardResponse> getNumberCard(
    String name,
  ) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.desk.doctype.number_card.number_card.get_result',
    );
    try {
      final numberCardDoc = await getdoc('Number Card', name);

      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': _cookie ?? '',
        },
        body: {
          'doc': numberCardDoc.docs?[0].toJson(),
          'filters': numberCardDoc.docs?[0].dynamicFiltersJson ?? '',
        },
      );

      if (response.statusCode == 200) {
        return NumberCardResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get desk number card. HTTP Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving number card: $e',
      );
    }
  }

  @override
  Future<http.Response> addAssignees() {
    // TODO: implement addAssignees
    throw UnimplementedError();
  }

  @override
  Future<http.Response> addReview() {
    // TODO: implement addReview
    throw UnimplementedError();
  }

  @override
  Future<http.Response> addTag() {
    // TODO: implement addTag
    throw UnimplementedError();
  }

  @override
  Future<http.Response> deleteComment() {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<http.Response> fetchList() {
    // TODO: implement fetchList
    throw UnimplementedError();
  }

  @override
  Future<http.Response> getContactList() {
    // TODO: implement getContactList
    throw UnimplementedError();
  }

  @override
  Future<http.Response> getDocinfo(String doctype, String name) {
    // TODO: implement getDocinfo
    throw UnimplementedError();
  }

  @override
  Future<http.Response> getDoctype(
    String doctype,
  ) {
    // TODO: implement getDoctype
    throw UnimplementedError();
  }

  @override
  Future<http.Response> getGroupByCount() {
    // TODO: implement getGroupByCount
    throw UnimplementedError();
  }

  @override
  Future<http.Response> getList({
    required List<String> fields,
    required int limit,
    required String orderBy,
    required String doctype,
  }) {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<http.Response> getReportViewCount() {
    // TODO: implement getReportViewCount
    throw UnimplementedError();
  }

  @override
  Future<http.Response> getTags() {
    // TODO: implement getTags
    throw UnimplementedError();
  }

  @override
  Future<GetDocResponse> getdoc(String doctype, String name) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.desk.form.load.getdoc',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': _cookie ?? '',
        },
        body: {
          'doctype': doctype,
          'name': name,
        },
      );

      if (response.statusCode == 200) {
        return GetDocResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get doc. HTTP Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving doc: $e',
      );
    }
  }

  @override
  Future<http.Response> postComment() {
    // TODO: implement postComment
    throw UnimplementedError();
  }

  @override
  Future<http.Response> removeAssignee() {
    // TODO: implement removeAssignee
    throw UnimplementedError();
  }

  @override
  Future<http.Response> removeAttachment(
    String doctype,
    String name,
    String attachmentName,
  ) {
    // TODO: implement removeAttachment
    throw UnimplementedError();
  }

  @override
  Future<http.Response> removeTag() {
    // TODO: implement removeTag
    throw UnimplementedError();
  }

  @override
  Future<http.Response> saveDocs() {
    // TODO: implement saveDocs
    throw UnimplementedError();
  }

  @override
  Future<http.Response> searchLink() {
    // TODO: implement searchLink
    throw UnimplementedError();
  }

  @override
  Future<http.Response> sendEmail() {
    // TODO: implement sendEmail
    throw UnimplementedError();
  }

  @override
  Future<http.Response> setPermission() {
    // TODO: implement setPermission
    throw UnimplementedError();
  }

  @override
  Future<http.Response> shareAdd() {
    // TODO: implement shareAdd
    throw UnimplementedError();
  }

  @override
  Future<http.Response> shareGetUsers() {
    // TODO: implement shareGetUsers
    throw UnimplementedError();
  }

  @override
  Future<http.Response> toggleLike() {
    // TODO: implement toggleLike
    throw UnimplementedError();
  }

  @override
  Future<http.Response> uploadFiles() {
    // TODO: implement uploadFiles
    throw UnimplementedError();
  }

  @override
  Future<SystemSettingsResponse> getSystemSettings() async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.core.doctype.system_settings.system_settings.load',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Cookie': _cookie ?? '',
        },
      );

      if (response.statusCode == 200) {
        return SystemSettingsResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get system settings. HTTP Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving system settings: $e',
      );
    }
  }

  @override
  Future<GetVersionsResponse> getVersions() async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.utils.change_log.get_versions',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Cookie': _cookie ?? '',
        },
      );

      if (response.statusCode == 200) {
        return GetVersionsResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get versions. HTTP Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving versions: $e',
      );
    }
  }
}
