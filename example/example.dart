import 'package:frappe_dart/frappe_dart.dart';

void main() async {
  final frappe = FrappeV15(
    baseUrl: 'https://your-frappe-url.com',
  );

  try {
    final authResponse = await frappe.login(
      LoginRequest(
        usr: 'your-username',
        pwd: 'your-password',
      ),
    );

    frappe.cookie = authResponse.cookie;

    final sidebarItems = await frappe.getDeskSideBarItems();

    final page = sidebarItems.message!.pages!
        .firstWhere((element) => element.name == 'Users');

    final deskPage = await frappe.getDesktopPage(
      DesktopPageRequest(
        name: page.name,
      ),
    );

    print(deskPage.toJson());
  } catch (error) {
    print('Error: $error');
  }
}
