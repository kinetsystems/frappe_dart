import 'package:frappe_dart/frappe_dart.dart';
import 'package:http/http.dart' as http;

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

  /// Retrieves details of a specific doctype.
  ///
  /// Takes the [doctype] as a parameter and returns an [GetDoctypeResponse].
  Future<GetDoctypeResponse> getDoctype(String doctype);

  /// Fetches a list of items.
  ///
  /// Returns an [http.Response] containing the list data.
  Future<http.Response> fetchList();

  /// Retrieves a document by doctype and name.
  ///
  /// Takes [doctype] and [name] as parameters and returns a [GetDocResponse].
  Future<GetDocResponse> getdoc(String doctype, String name);

  Future<GetCountResponse> getCount(GetCountRequest getCountRequest);

  /// Posts a comment.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> postComment();

  /// Sends an email.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> sendEmail();

  /// Adds assignees to a task or document.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> addAssignees();

  /// Removes an assignee from a task or document.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> removeAssignee();

  /// Retrieves document information for a specific doctype and name.
  ///
  /// Takes [doctype] and [name] as parameters and returns an [http.Response].
  Future<http.Response> getDocinfo(String doctype, String name);

  /// Removes an attachment from a document.
  ///
  /// Takes [doctype], [name], and [attachmentName] as parameters and returns an [http.Response].
  Future<http.Response> removeAttachment(
    String doctype,
    String name,
    String attachmentName,
  );

  /// Deletes a comment.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> deleteComment();

  /// Uploads files to the server.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> uploadFiles();

  /// Saves documents.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> saveDocs();

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

  /// Toggles a "like" on a document.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> toggleLike();

  /// Retrieves tags associated with a document.
  ///
  /// Returns an [http.Response] containing the tags.
  Future<http.Response> getTags();

  /// Removes a tag from a document.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> removeTag();

  /// Adds a tag to a document.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> addTag();

  /// Adds a review to a document.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> addReview();

  /// Sets permissions for a document.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> setPermission();

  /// Shares a document with a user.
  ///
  /// Returns an [http.Response] indicating the result of the operation.
  Future<http.Response> shareAdd();

  /// Retrieves users with whom a document is shared.
  ///
  /// Returns an [http.Response] containing the shared users.
  Future<http.Response> shareGetUsers();

  /// Retrieves the contact list.
  ///
  /// Returns an [http.Response] containing the contact list.
  Future<http.Response> getContactList();

  /// Retrieves a count grouped by a specific field.
  ///
  /// Returns an [http.Response] containing the group count data.
  Future<http.Response> getGroupByCount();

  /// Retrieves the count of items in a report view.
  ///
  /// Returns an [http.Response] containing the count.
  Future<http.Response> getReportViewCount();

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
  /// Takes [fields], [limit], [orderBy], and [doctype] as parameters and returns an [http.Response].
  Future<http.Response> getList({
    required List<String> fields,
    required int limit,
    required String orderBy,
    required String doctype,
  });

  /// Retrieves the list of apps
  ///
  /// Returns an [AppsResponse] containing the list of apps.
  Future<AppsResponse> getApps();

  /// Retrieves the user info
  ///
  /// Returns an [UserInfoResponse] containing the user info.
  Future<UserInfoResponse> getUserInfo();

  Future<PingResponse> ping();

  Future<http.Response> deleteDoc(
    DeleteDocRequest deleteDocRequest,
  );

  Future<http.Response> getValue({
    required String doctype,
    required String fieldname,
  });
}
