import 'package:frappe_dart/frappe_dart.dart';
import 'package:frappe_dart/src/models/report_view_request.dart';
import 'package:frappe_dart/src/models/report_view_response.dart';
import 'package:frappe_dart/src/models/savedocs_response/savedocs_response.dart';

/// An abstract class that defines the Frappe API.
abstract class FrappeApi {
  /// Logs in the user.
  ///
  /// Takes a [LoginRequest] object as input and returns a [LoginResponse].
  Future<LoginResponse> login(LoginRequest loginRequest);

  /// Logs out the current user.
  ///
  /// Returns an [LogoutResponse] indicating the result of the logout operation.
  Future<LogoutResponse> logout();

  /// Retrieves the logged user
  ///
  /// Returns a [LoggedUserResponse] containing the user's username or email.
  Future<LoggedUserResponse> getLoggerUser();

  /// Retrieves the desk sidebar items.
  ///
  /// Returns a [DeskSidebarItemsResponse] with the list of sidebar items.
  Future<DeskSidebarItemsResponse> getDeskSideBarItems();

  /// Retrieves a desktop page based on the provided request.
  ///
  /// Takes a [DesktopPageRequest] object and returns a [DesktopPageResponse].
  Future<DesktopPageResponse> getDesktopPage(
    DesktopPageRequest deskPageRequest,
  );

  /// Retrieves a number card by its name.
  ///
  /// Takes the [name] of the number card and returns a [NumberCardResponse].
  Future<NumberCardResponse> getNumberCard(String name);

  /// Retrieves a number card percentage difference by its name.
  ///
  /// Takes the [name] of the number card and
  /// returns a [NumberCardPercentageDifferenceResponse].
  Future<NumberCardPercentageDifferenceResponse>
      getNumberCardPercentageDifference(
    String name,
    String result,
  );

  /// Retrieves details of a specific doctype.
  ///
  /// Takes the [doctype] as a parameter and returns an [GetDoctypeResponse].
  Future<GetDoctypeResponse> getDoctype(String doctype);

  /// Retrieves a document by doctype and name.
  ///
  /// Takes [doctype] and [name] as parameters and returns a [GetDocResponse].
  Future<GetDocResponse> getdoc(String doctype, String name);

  ///
  Future<GetCountResponse> getCount(GetCountRequest getCountRequest);

  /// Saves documents.
  ///
  /// Returns an [SavedocsReponse<T>] indicating the result of the operation.
  Future<SavedocsReponse<T>> savedocs<T>({
    required T document,
    required String action,
    required String Function() toJson,
    required T Function(Map<String, dynamic>) fromMap,
  });

  /// Searches for a link.
  ///
  /// Returns an [SearchLinkResponse] containing the search results.
  Future<SearchLinkResponse> searchLink(SearchLinkRequest searchLinkRequest);

  /// Validate a link.
  ///
  /// Returns an [ValidateLinkResponse] containing the validate link results.
  Future<ValidateLinkResponse> validateLink(
    ValidateLinkRequest validateLinkRequest,
  );

  /// Retrieves the system settings.
  ///
  /// Returns a [SystemSettingsResponse] containing the system settings.
  Future<SystemSettingsResponse> getSystemSettings();

  /// Retrieves the system versions.
  ///
  /// Returns a [GetVersionsResponse] containing version information.
  Future<GetVersionsResponse> getVersions();

  /// Retrieves a list of items based on the specified parameters.
  ///
  /// Takes [fields], [limitStart], [orderBy], and [doctype] as parameters
  /// and returns a [Map].
  Future<Map<String, dynamic>> getList({
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
  });

  /// Retrieves the list of apps
  ///
  /// Returns an [AppsResponse] containing the list of apps.
  Future<AppsResponse> getApps();

  /// Retrieves the user info
  ///
  /// Returns an [UserInfoResponse] containing the user info.
  Future<UserInfoResponse> getUserInfo();

  /// Pings the server.
  ///
  /// Returns a [PingResponse] containing the ping response.
  Future<PingResponse> ping();

  /// Saves a document.
  ///
  /// Takes a [Map] of [String, dynamic] as input and returns a [Map].
  Future<Map<String, dynamic>> save(
    Map<String, dynamic> doc,
  );

  /// Deletes a document.
  ///
  /// Takes a [DeleteDocRequest] as input and returns a [Map].
  Future<Map<String, dynamic>> deleteDoc(
    DeleteDocRequest deleteDocRequest,
  );

  /// Retrieves a value from the server.
  ///
  /// Takes a [GetRequest] as input and returns a [Map].
  Future<Map<String, dynamic>> getValue({
    required String doctype,
    required String fieldname,
  });

  /// Retrieves a document by doctype and name.
  ///
  /// Takes a [GetRequest] object as input and returns a [Map].
  Future<Map<String, dynamic>> get(GetRequest getRequest);

  Future<Map<String, dynamic>> call({
    required String method,
    required String type,
    Map<String, dynamic>? args,
    String? url,
  });

  /// Executes a report run with the provided payload.
  ///
  /// Takes a [payload] containing report parameters and returns a [Map] with the report results.
  Future<Map<String, dynamic>> getReportRun(
    Map<String, dynamic> payload,
  );

  Future<ReportViewResponse> GetReportView(
    ReportViewRequest reportViewRequest,
  );
}
