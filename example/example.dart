import 'package:frappe_dart/frappe_dart.dart';

void main() async {
  final frappe = FrappeV15(
    baseUrl: 'https://accreditation.haronerp.com',
  );

  try {
    final authResponse = await frappe.login(
      LoginRequest(
        usr: 'ahmed@haronerp.com',
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
