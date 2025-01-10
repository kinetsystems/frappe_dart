# Frappe Dart

A comprehensive Dart wrapper for interacting with the Frappe API, providing easy access to its features and enabling seamless communication with Frappe-based systems.

## What's New

- **Web Support**: Now fully supports web applications, allowing integration with Frappe from browsers.

## Installation

To get started with the `frappe_dart` package, add it to your project's `pubspec.yaml` dependencies:

```yaml
dependencies:
  frappe_dart: ^0.0.3
```

## Usage

Once installed, you can use the wrapper to interact with the Frappe API. Here's an example of how to perform a basic request:

```dart
import 'package:frappe_dart/frappe_dart.dart';

void main() async {
  final frappeClient = FrappeV15(
    baseUrl: 'https://your-frappe-url.com',
  );

  try {
    final authResponse = await frappeClient.login(
      LoginRequest(
        usr: 'your-username',
        pwd: 'your-password',
      ),
    );

    frappeClient.cookie = authResponse.cookie;

    final sidebarItems = await frappeClient.getDeskSideBarItems();

    final page = sidebarItems.message!.pages!
        .firstWhere((element) => element.name == 'Users');

    final deskPage = await frappeClient.getDesktopPage(
      DesktopPageRequest(
        name: page.name,
      ),
    );

    print(deskPage.toJson());
  } catch (error) {
    print('Error: $error');
  }
}
```

## How to extend

You can extend the functionality of frappe_dart to support additional custom API endpoints using Dart's extension methods.

```dart
import 'package:http/http.dart' as http;

extension FrappeV15Extensions on FrappeV15 {
  Future<http.Response> newApiEndPoint(
    CheckOpeningEntryRequest request,
  ) async {
    final url = Uri.parse(
      '$baseUrl/api/method/new_api_endpoint',
    );

    final response = await http.get(
      url,
      headers: {
        if (cookie != null) 'Cookie': cookie!,
      },
    );

    return response;
  }
}
```

## Contributing

We welcome contributions to improve and extend the functionality of frappe_dart. If you’d like to contribute, please follow these steps:

1. Fork the repository.
2. Create a new branch for your feature or bug fix.
3. Write tests to ensure the changes work as expected.
4. Submit a pull request with a detailed explanation of your changes.

For bug reports, feature requests, or any issues, please open an issue on the GitHub repository.

## License

This project is licensed under the MIT License - see the LICENSE file for details.
