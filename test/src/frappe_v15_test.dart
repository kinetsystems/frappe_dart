// ignore_for_file: prefer_const_constructors
import 'package:dio/dio.dart';
import 'package:frappe_dart/frappe_dart.dart';
import 'package:test/test.dart';

void main() {
  group('FrappeV15', () {
    test('can be instantiated', () {
      expect(
        FrappeV15(
          baseUrl: 'https://example.com',
          dio: Dio(),
        ),
        isNotNull,
      );
    });
  });
}
