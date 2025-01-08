import 'package:frappe_dart/src/frappe_api.dart';
import 'package:frappe_dart/src/models/models.dart';
import 'package:http/http.dart' show Response;

/// A class that implements the Frappe API for version 14.
class FrappeV14 implements FrappeApi {
  @override
  Future<Response> addAssignees() {
    // TODO: implement addAssignees
    throw UnimplementedError();
  }

  @override
  Future<Response> addReview() {
    // TODO: implement addReview
    throw UnimplementedError();
  }

  @override
  Future<Response> addTag() {
    // TODO: implement addTag
    throw UnimplementedError();
  }

  @override
  Future<Response> deleteComment() {
    // TODO: implement deleteComment
    throw UnimplementedError();
  }

  @override
  Future<Response> fetchList() {
    // TODO: implement fetchList
    throw UnimplementedError();
  }

  @override
  Future<Response> getContactList() {
    // TODO: implement getContactList
    throw UnimplementedError();
  }

  @override
  Future<DeskSidebarItemsResponse> getDeskSideBarItems() {
    // TODO: implement getDeskSideBarItems
    throw UnimplementedError();
  }

  @override
  Future<DesktopPageResponse> getDesktopPage(
    DesktopPageRequest deskPageRequest,
  ) {
    // TODO: implement getDesktopPage
    throw UnimplementedError();
  }

  @override
  Future<Response> getDocinfo(String doctype, String name) {
    // TODO: implement getDocinfo
    throw UnimplementedError();
  }

  @override
  Future<Response> getDoctype(
    String doctype,
  ) {
    // TODO: implement getDoctype
    throw UnimplementedError();
  }

  @override
  Future<Response> getGroupByCount() {
    // TODO: implement getGroupByCount
    throw UnimplementedError();
  }

  @override
  Future<Response> getList({
    required List<String> fields,
    required int limit,
    required String orderBy,
    required String doctype,
  }) {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<NumberCardResponse> getNumberCard(String name) {
    // TODO: implement getNumberCard
    throw UnimplementedError();
  }

  @override
  Future<Response> getReportViewCount() {
    // TODO: implement getReportViewCount
    throw UnimplementedError();
  }

  @override
  Future<SystemSettingsResponse> getSystemSettings() {
    // TODO: implement getSystemSettings
    throw UnimplementedError();
  }

  @override
  Future<Response> getTags() {
    // TODO: implement getTags
    throw UnimplementedError();
  }

  @override
  Future<GetVersionsResponse> getVersions() {
    // TODO: implement getVersions
    throw UnimplementedError();
  }

  @override
  Future<GetDocResponse> getdoc(String doctype, String name) {
    // TODO: implement getdoc
    throw UnimplementedError();
  }

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<Response> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<Response> postComment() {
    // TODO: implement postComment
    throw UnimplementedError();
  }

  @override
  Future<Response> removeAssignee() {
    // TODO: implement removeAssignee
    throw UnimplementedError();
  }

  @override
  Future<Response> removeAttachment(
    String doctype,
    String name,
    String attachmentName,
  ) {
    // TODO: implement removeAttachment
    throw UnimplementedError();
  }

  @override
  Future<Response> removeTag() {
    // TODO: implement removeTag
    throw UnimplementedError();
  }

  @override
  Future<Response> saveDocs() {
    // TODO: implement saveDocs
    throw UnimplementedError();
  }

  @override
  Future<Response> searchLink() {
    // TODO: implement searchLink
    throw UnimplementedError();
  }

  @override
  Future<Response> sendEmail() {
    // TODO: implement sendEmail
    throw UnimplementedError();
  }

  @override
  Future<Response> setPermission() {
    // TODO: implement setPermission
    throw UnimplementedError();
  }

  @override
  Future<Response> shareAdd() {
    // TODO: implement shareAdd
    throw UnimplementedError();
  }

  @override
  Future<Response> shareGetUsers() {
    // TODO: implement shareGetUsers
    throw UnimplementedError();
  }

  @override
  Future<Response> toggleLike() {
    // TODO: implement toggleLike
    throw UnimplementedError();
  }

  @override
  Future<Response> uploadFiles() {
    // TODO: implement uploadFiles
    throw UnimplementedError();
  }
}
