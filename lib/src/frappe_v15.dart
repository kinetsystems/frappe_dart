import 'dart:convert';
import 'dart:io';

import 'package:frappe_dart/frappe_dart.dart';
import 'package:frappe_dart/src/frappe_api.dart';
import 'package:http/http.dart' as http;

class FrappeV15 implements FrappeApi {
  FrappeV15({
    required this.baseUrl,
    this.cookie,
  });

  final String baseUrl;
  final String? cookie;

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    final url = Uri.parse('$baseUrl/api/method/login');
    try {
      // Sending the POST request
      final response = await http.post(
        url,
        body: loginRequest.toJson(),
        headers: {'Content-Type': 'application/x-www-form-urlencoded'},
      );

      // Checking the response status
      if (response.statusCode == HttpStatus.ok) {
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
      '$baseUrl/api/method/frappe.desk.desktop.get_workspace_sidebar_items',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Cookie': cookie ?? '',
        },
      );

      if (response.statusCode == HttpStatus.ok) {
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
    DeskPageRequest deskPageRequest,
  ) async {
    final url = Uri.parse(
      '$baseUrl/api/method/frappe.desk.desktop.get_desktop_page',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': cookie ?? '',
        },
        body: {
          'page': deskPageRequest.toJson(),
        },
      );

      if (response.statusCode == HttpStatus.ok) {
        return DesktopPageResponse.fromJson(response.body);
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
  Future<NumberCardResponse> getNumberCard(
    NumberCardRequest numberCardRequest,
  ) async {
    final url = Uri.parse(
      '$baseUrl/api/method/frappe.desk.doctype.number_card.number_card.get_result',
    );
    try {
      final response = await http.post(
        url,
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Cookie': cookie ?? '',
        },
        body: {
          'page': numberCardRequest.toJson(),
        },
      );

      print(response.body);

      if (response.statusCode == HttpStatus.ok) {
        return NumberCardResponse.fromJson(response.body);
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
}
