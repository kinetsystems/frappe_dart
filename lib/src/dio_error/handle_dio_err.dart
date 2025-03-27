import 'package:dio/dio.dart';

/// Handles Dio exceptions and returns a user-friendly error message.
///
/// This method takes a [DioException] and maps it to a meaningful error message
/// based on the type of exception. It helps to provide clear feedback to users
/// instead of exposing raw errors.
///
/// ### Usage:
/// ```dart
/// try {
///   final response = await dio.get(url);
/// } on DioException catch (e) {
///   throw Exception(handleDioError(e));
/// }
/// ```
///
/// ### Exception Types Handled:
/// - **Connection Timeout** → Request timed out
/// - **Receive Timeout** → Server took too long to respond
/// - **Bad Response** → Server returned an error
/// - **Connection Error** → No internet connection
/// - **Default Case** → Unexpected error
///
///
/// ### Parameters:
/// - [e] : The `DioException` instance that occurred during the API request.
///
/// ### Returns:
/// - A `String` describing the error in a user-friendly manner.

String handleDioError(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
    case DioExceptionType.receiveTimeout:
      return 'Request timed out. Please check your internet connection.';

    case DioExceptionType.badResponse:
      return 'Server error: ${e.response?.statusCode}, ${e.response?.data}';

    case DioExceptionType.connectionError:
      return 'No internet connection. Please try again later.';

    case DioExceptionType.cancel:
      return 'Request was cancelled. Please try again.';

    case DioExceptionType.unknown:
      return 'An unexpected error occurred: ${e.message}';

    // ignore: no_default_cases
    default:
      return 'Something went wrong. Please try again.';
  }
}
