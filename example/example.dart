import 'package:frappe_dart/frappe_dart.dart';

void main() async {
  var frappe = FrappeV15(
    baseUrl: 'hostname',
  );

  try {
    final authResponse = await frappe.login(
      LoginRequest(
        usr: 'username',
        pwd: 'password',
      ),
    );

    frappe = FrappeV15(
      baseUrl: 'hostname',
      cookie: authResponse.cookie,
    );

    final deskResponse = await frappe.getDeskSideBarItems();

    print(deskResponse.toJson());
  } catch (error) {
    print('Error: $error');
  }
}
