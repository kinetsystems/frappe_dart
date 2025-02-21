## 0.0.5

- **feat**: implement ping api endpoint
- **feat**: add delete document functionality to Frappe API
- **feat**: add getValue method to Frappe API for retrieving field values
- **feat**: implement get_doctype api endpoint
- **feat**: implement get_list api endpoint
- **refactor**: remove unused API methods from FrappeApi and FrappeV15

## 0.0.4

- **feat**: add getLoggerUser method to FrappeApi and implement in FrappeV15; create LoggedUserResponse model
- **feat**: remove deprecated FrappeV13 and FrappeV14; add getApps and getUserInfo methods to FrappeApi
- **feat**: add models for InternalLinks, Transaction, CountryTimezoneInfoResponse, and LogoutResponse; update UserInfoResponse and AppsResponse models

## 0.0.3

- **chore**: update README and pubspec for clarity; add VSCode settings and tests for FrappeV13 and FrappeV14
- **refactor**: enhance documentation and structure for desk sidebar models and requests

## 0.0.2

- **chore**: add GitHub Actions workflow for publishing to pub.dev
- **refactor**: simplify FrappeV15 class by removing `baseUrl` and `cookie` parameters
- **refactor**: update Frappe API wrapper to support versions 13, 14, and 15

## 0.0.1

- **refactor**: rename `DeskPageRequest` to `DesktopPageRequest` and update related usages
- **refactor**: change `indicatorColor` type from `dynamic` to `String` in `DeskPage` model
- **refactor**: adjust formatting and remove unused import in response models
- **refactor**: format method parameters and clean up unused lines in response models
- **refactor**: remove parameters from `saveDocs` method in FrappeApi implementations
- **refactor**: specify type for `fields` parameter in `getList` method across FrappeApi implementations
