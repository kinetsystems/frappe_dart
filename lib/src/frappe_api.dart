import 'package:frappe_dart/frappe_dart.dart';
import 'package:frappe_dart/src/models/report_view_request.dart';
import 'package:frappe_dart/src/models/report_view_response.dart';
import 'package:frappe_dart/src/models/savedocs_response/savedocs_response.dart';
import 'package:frappe_dart/src/models/send_email_response.dart';

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
  Future<NumberCardResponse> getNumberCard(String doc, String filters);

  /// Retrieves a number card percentage difference by its name.
  ///
  /// Takes the [name] of the number card and
  /// returns a [NumberCardPercentageDifferenceResponse].
  Future<NumberCardPercentageDifferenceResponse>
      getNumberCardPercentageDifference(
          String doc, String filters, String result);

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
  Future<Map<String, dynamic>> validateLink(
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
  Future<Map<String, dynamic>> save(Map<String, dynamic> doc);

  /// Deletes a document.
  ///
  /// Takes a [DeleteDocRequest] as input and returns a [Map].
  Future<Map<String, dynamic>> deleteDoc(DeleteDocRequest deleteDocRequest);

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

  /// Retrieves a dashboard chart.
  ///
  /// Takes a [Map] of [String, dynamic] as input and returns a [Map].
  Future<Map<String, dynamic>> getDashboardChart(Map<String, dynamic> payload);

  /// Executes a report run with the provided payload.
  ///
  /// Takes a [payload] containing report parameters and returns a [Map] with the report results.
  Future<Map<String, dynamic>> getReportRun(Map<String, dynamic> payload);

  /// Sends an email with the provided parameters.
  ///
  /// Takes a [SendEmailRequest] object as input and returns a [SendEmailResponse].
  Future<SendEmailResponse> sendEmail({
    required String recipients,
    required String subject,
    required String content,
    required String doctype,
    required String name,
    required String sendEmail,
    required String printFormat,
    required String senderFullName,
    required String lang,
  });

  /// Retrieves a report view with the provided request.
  ///
  /// Takes a [ReportViewRequest] object as input and returns a [ReportViewResponse].
  Future<ReportViewResponse> getReportView(ReportViewRequest reportViewRequest);

  /// Maps documents with the provided parameters.
  ///
  /// Takes a [List<String>] of source names, a [Map<String, dynamic>] of target document, and a [String] of method as parameters and returns a [Map].
  Future<Map<String, dynamic>> mapDocs({
    required List<String> sourceName,
    required Map<String, dynamic> targetDoc,
    required String method,
  });

  /// Switches the theme with the provided parameter.
  ///
  /// Takes a [String] of theme as parameter and returns a [Map].
  Future<Map<String, dynamic>> switchTheme({required String theme});

  /// Searches for a widget with the provided parameters.
  ///
  /// Takes a [String] of doctype, a [String] of txt, a [String] of query, a [Map<String, dynamic>] of filters, a [List<String>] of filter fields, a [String] of search field, a [String] of start, and a [String] of page length as parameters and returns a [Map].
  Future<Map<String, dynamic>> searchWidget({
    required String doctype,
    required String txt,
    required String query,
    required Map<String, dynamic> filters,
    List<String>? filterFields,
    String? searchField,
    String start = '0',
    String pageLength = '10',
  });

  /// Runs a document method with the provided parameters.
  ///
  /// Takes a [Map<String, dynamic>] of data and a [String] of method as parameters and returns a [Map].
  Future<Map<String, dynamic>> runDocMethod({
    required Map<String, dynamic> data,
    required String method,
  });

  /// Inserts a new document via frappe.client.insert.
  ///
  /// Takes an [InsertRequest] object as input and returns a [Map] with the created document.
  Future<Map<String, dynamic>> insert(InsertRequest insertRequest);

  /// Sets field value(s) of a document via frappe.client.set_value.
  ///
  /// Takes a [SetValueRequest] object as input and returns a [Map] with the updated document.
  Future<Map<String, dynamic>> setValue(SetValueRequest setValueRequest);

  /// Renames a document via frappe.client.rename_doc.
  ///
  /// Takes a [RenameDocRequest] object as input and returns a [Map] with the renamed document.
  Future<Map<String, dynamic>> renameDoc(RenameDocRequest renameDocRequest);

  /// Submits a document via frappe.client.submit.
  ///
  /// Takes a [SubmitDocRequest] object as input and returns a [Map] with the submitted document.
  Future<Map<String, dynamic>> submitDoc(SubmitDocRequest submitDocRequest);

  /// Cancels a submitted document via frappe.client.cancel.
  ///
  /// Takes a [CancelDocRequest] object as input and returns a [Map] with the cancelled document.
  Future<Map<String, dynamic>> cancelDoc(CancelDocRequest cancelDocRequest);

  /// Gets a list of documents from a doctype via REST resource API.
  ///
  /// Takes a [doctype] as parameter and optional query parameters.
  /// Returns a [Map] with the list of documents.
  Future<Map<String, dynamic>> getResourceList(
    String doctype, {
    List<String>? fields,
    Map<String, dynamic>? filters,
    int? limitStart,
    int? limitPageLength,
    String? orderBy,
  });

  /// Gets a single document by doctype and name via REST resource API.
  ///
  /// Takes [doctype] and [name] as parameters.
  /// Returns a [Map] with the document data.
  Future<Map<String, dynamic>> getResource(
    String doctype,
    String name,
  );

  /// Creates a new document via REST resource API.
  ///
  /// Takes a [doctype] and [data] Map as parameters.
  /// Returns a [Map] with the created document.
  Future<Map<String, dynamic>> createResource(
    String doctype,
    Map<String, dynamic> data,
  );

  /// Updates a document via REST resource API.
  ///
  /// Takes [doctype], [name], and [data] Map as parameters.
  /// Returns a [Map] with the updated document.
  Future<Map<String, dynamic>> updateResource(
    String doctype,
    String name,
    Map<String, dynamic> data,
  );

  /// Deletes a document via REST resource API.
  ///
  /// Takes [doctype] and [name] as parameters.
  /// Returns a [Map] with the deletion result.
  Future<Map<String, dynamic>> deleteResource(
    String doctype,
    String name,
  );
}
