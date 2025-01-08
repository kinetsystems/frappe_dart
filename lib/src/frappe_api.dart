import 'package:frappe_dart/frappe_dart.dart';
import 'package:http/http.dart' as http;

abstract class FrappeApi {
  Future<LoginResponse> login(LoginRequest loginRequest);
  Future<http.Response> logout();

  Future<DeskSidebarItemsResponse> getDeskSideBarItems();

  Future<DesktopPageResponse> getDesktopPage(
    DesktopPageRequest deskPageRequest,
  );

  Future<NumberCardResponse> getNumberCard(String name);

  Future<http.Response> getDoctype(
    String doctype,
  );

  Future<http.Response> fetchList();

  Future<GetDocResponse> getdoc(String doctype, String name);

  Future<http.Response> postComment();

  Future<http.Response> sendEmail();

  Future<http.Response> addAssignees();

  Future<http.Response> removeAssignee();

  Future<http.Response> getDocinfo(String doctype, String name);

  Future<http.Response> removeAttachment(
    String doctype,
    String name,
    String attachmentName,
  );

  Future<http.Response> deleteComment();

  Future<http.Response> uploadFiles();

  Future<http.Response> saveDocs();

  Future<http.Response> searchLink();

  Future<http.Response> toggleLike();

  Future<http.Response> getTags();

  Future<http.Response> removeTag();

  Future<http.Response> addTag();

  Future<http.Response> addReview();

  Future<http.Response> setPermission();

  Future<http.Response> shareAdd();

  Future<http.Response> shareGetUsers();

  Future<http.Response> getContactList();

  Future<http.Response> getGroupByCount();

  Future<http.Response> getReportViewCount();

  Future<SystemSettingsResponse> getSystemSettings();

  Future<GetVersionsResponse> getVersions();

  Future<http.Response> getList({
    required List fields,
    required int limit,
    required String orderBy,
    required String doctype,
  });
}
