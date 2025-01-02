import 'package:frappe_dart/frappe_dart.dart';

void main() async {
  var frappe = FrappeV15(
    baseUrl: 'hostname',
  );

  try {
    final authResponse = await frappe.login(
      LoginRequest(
        usr: 'usr',
        pwd: 'pwd',
      ),
    );

    frappe = FrappeV15(
      baseUrl: 'hostname',
      cookie: authResponse.cookie,
    );

    final sidebarItems = await frappe.getDeskSideBarItems();

    final page = sidebarItems.message!.pages!
        .firstWhere((element) => element.name == 'Users');

    final deskPage = await frappe.getDesktopPage(
      DeskPageRequest(
        name: page.name,
      ),
    );

    print(deskPage.toJson());
  } catch (error) {
    print('Error: $error');
  }
}
