import 'dart:convert';

import 'package:frappe_dart/frappe_dart.dart';
import 'package:frappe_dart/src/frappe_api.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

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

  //instantiate dio
  final Dio dio = Dio();

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final url = '$_baseUrl/api/method/login';
    try {
      // Sending the POST request
      final response = await dio.post<LoginResponse>(
        url,
        data: loginRequest.toMap(),
        options: Options(
            headers: {'Content-Type': 'application/x-www-form-urlencoded'}),
      );

      // Checking the response status
      if (response.statusCode == 200) {
        final responseBody =
            jsonDecode(response.data.toString()) as Map<String, dynamic>;

        // Extracting user ID from cookies if available
        final cookies = response.headers['set-cookie'];
        if (cookies != null) {
        // print('Cookies: $cookies');
          for (final cookie in cookies) {
            final userId = _extractUserIdFromCookies(cookie);
            if (userId != null) {
              responseBody['user_id'] = userId;
              responseBody['cookie'] = cookies;
            }
          }
        }

        // Returning the parsed response
        return LoginResponse.fromJson(responseBody);
      } else {
        throw Exception(
          '''Failed to login. Response Status: ${response.statusCode}, Body: ${response.data}''',
        );
      }
    } catch (e) {
      throw Exception('An error occurred during login: $e');
    }
  }

  @override
  Future<LogoutResponse> logout() async {
    final url = 
      '$_baseUrl/api/method/logout';
    try {
      final response = await dio.post<LogoutResponse>(
        url,
      options: Options ( headers: {
          'Cookie': _cookie ?? '',
        },),
      );

      if (response.statusCode == 200) {
        return LogoutResponse.fromJson(response.data.toString());
      } else {
        throw Exception(
          'Failed to logout. Response Status: ${response.statusCode}',
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
    final url = 
      '$_baseUrl/api/method/frappe.desk.desktop.get_workspace_sidebar_items';
    try {
      final response = await dio.post<DeskSidebarItemsResponse>(
        url,
       options: Options( headers: {
          'Content-Type': 'application/json',
          'Cookie': _cookie ?? '',
        },)
      );

      if (response.statusCode == 200) {
        return DeskSidebarItemsResponse.fromJson(response.data.toString());
      } else {
        throw Exception(
          'Failed to get desk sidebar items. Response Status: ${response.statusCode}',
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
    final url = 
      '$_baseUrl/api/method/frappe.desk.desktop.get_desktop_page';
    try {
      final response = await dio.post<DesktopPageResponse>(
        url,
      options: Options ( headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': _cookie ?? '',
        },),
        data: {
          'page': deskPageRequest.toJson(),
        },
      );

      if (response.statusCode == 200) {
        return DesktopPageResponse.fromJson(response.data.toString());
      } else {
        throw Exception(
          'Failed to get desk page. Response Status: ${response.statusCode}',
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
          'Failed to get desk number card. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving number card: $e',
      );
    }
  }

  @override
  Future<GetDoctypeResponse> getDoctype(
    String doctype,
  ) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.desk.form.load.getdoctype?doctype=$doctype&with_parent=1',
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
        },
      );

      if (response.statusCode == 200) {
        return GetDoctypeResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get doc. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving doc: $e',
      );
    }
  }

  @override
  Future<http.Response> getList({
    required String doctype,
    List<String>? fields,
    int? limitStart,
    int? limitPageLength,
    String? orderBy,
    String? parent,
    Map<String, dynamic>? filters,
    String? groupBy,
    bool? debug,
    bool? asDict,
    Map<String, dynamic>? orFilters,
  }) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.client.get_list',
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
          if (fields != null) 'fields': jsonEncode(fields),
          if (filters != null) 'filters': jsonEncode(filters),
          if (groupBy != null) 'group_by': groupBy,
          if (orderBy != null) 'order_by': orderBy,
          if (limitStart != null) 'limit_start': limitStart.toString(),
          if (limitPageLength != null)
            'limit_page_length': limitPageLength.toString(),
          if (parent != null) 'parent': parent,
          if (debug != null) 'debug': debug.toString(),
          if (asDict != null) 'as_dict': asDict.toString(),
          if (orFilters != null) 'or_filters': jsonEncode(orFilters),
        },
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception(
          'Failed to get doc. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving doc: $e',
      );
    }
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
          'Failed to get doc. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving doc: $e',
      );
    }
  }

  @override
  Future<GetCountResponse> getCount(GetCountRequest getCountRequest) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.client.get_count?doctype=${getCountRequest.doctype}',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': _cookie ?? '',
        },
        body: getCountRequest.toMap(),
      );

      if (response.statusCode == 200) {
        return GetCountResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get doc. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving doc: $e',
      );
    }
  }

  @override
  Future<http.Response> saveDocs() {
    // TODO: implement saveDocs
    throw UnimplementedError();
  }

  @override
  Future<SearchLinkResponse> searchLink(
    SearchLinkRequest searchLinkRequest,
  ) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.desk.search.search_link',
    );

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': _cookie ?? '',
        },
        body: searchLinkRequest.toMap(),
      );

      if (response.statusCode == 200) {
        return SearchLinkResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to search link. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while searching link: $e',
      );
    }
  }

  @override
  Future<ValidateLinkResponse> validateLink(
    ValidateLinkRequest validateLinkRequest,
  ) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.client.validate_link',
    );

    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': _cookie ?? '',
        },
        body: validateLinkRequest.toMap(),
      );

      if (response.statusCode == 200) {
        return ValidateLinkResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to search link. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while searching link: $e',
      );
    }
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
          'Failed to get system settings. Response Status: ${response.statusCode}',
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
          'Failed to get versions. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving versions: $e',
      );
    }
  }

  @override
  Future<LoggedUserResponse> getLoggerUser() async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.auth.get_logged_user',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Cookie': _cookie ?? '',
        },
      );

      if (response.statusCode == 200) {
        return LoggedUserResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get logged user. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving logged user: $e',
      );
    }
  }

  @override
  Future<AppsResponse> getApps() async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.apps.get_apps',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Cookie': _cookie ?? '',
        },
      );

      if (response.statusCode == 200) {
        return AppsResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get apps. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving apps: $e',
      );
    }
  }

  @override
  Future<UserInfoResponse> getUserInfo() async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.realtime.get_user_info',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Cookie': _cookie ?? '',
        },
      );

      if (response.statusCode == 200) {
        return UserInfoResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to get apps. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while retrieving apps: $e',
      );
    }
  }

  @override
  Future<PingResponse> ping() async {
    final url = Uri.parse(
      '$_baseUrl/api/method/ping',
    );
    try {
      final response = await http.post(
        url,
      );

      if (response.statusCode == 200) {
        return PingResponse.fromJson(response.body);
      } else {
        throw Exception(
          'Failed to ping. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while pinging: $e',
      );
    }
  }

  @override
  Future<http.Response> deleteDoc(
    DeleteDocRequest deleteDocRequest,
  ) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.client.delete',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': _cookie ?? '',
        },
        body: deleteDocRequest.toMap(),
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception(
          'Failed to delete doc. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while deleting doc: $e',
      );
    }
  }

  @override
  Future<http.Response> getValue({
    required String doctype,
    required String fieldname,
  }) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.client.get_value?doctype=$doctype&fieldname=$fieldname',
    );

    try {
      final response = await http.get(
        url,
        headers: {
          'Cookie': _cookie ?? '',
        },
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception(
          'Failed to get value. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while getting value: $e',
      );
    }
  }

  @override
  Future<http.Response> get(GetRequest getRequest) async {
    final url = Uri.parse(
      '$_baseUrl/api/method/frappe.client.get',
    );

    try {
      final response = await http.post(
        url,
        headers: {
          'Cookie': _cookie ?? '',
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: getRequest.toMap(),
      );

      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception(
          'Failed to get value. Response Status: ${response.statusCode}',
        );
      }
    } catch (e) {
      throw Exception(
        'An error occurred while getting value: $e',
      );
    }
  }
}
