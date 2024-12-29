import 'package:frappe_dart/frappe_dart.dart';

abstract class FrappeApi {
  Future<LoginResponse> login(LoginRequest loginRequest);

  Future<DeskSidebarItemsResponse> getDeskSideBarItems();

  Future<DesktopPageResponse> getDesktopPage(DeskPageRequest deskPageRequest);

  Future<NumberCardResponse> getNumberCard(NumberCardRequest numberCardRequest);
}
