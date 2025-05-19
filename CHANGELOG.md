## 0.0.6

- **feat**: implement client get api endpoint
- **fix**: export get request model
- Feat/implement savedocs endpoint
- 🔄 Migrate from http to dio for API requests
- **fix**: export dio error handling module
- **fix**: update savedocs response handling to use Map type
- **fix**: update README and newApiEndPoint method to improve clarity and f…
- **feat**: add filters property to SearchLinkRequest model for enhanced qu…
- **fix**: remove unnecessary Content-Type header from API request
- **feat**: implement number card percentage difference endpoint
- **feat**: add label property to Message model for enhanced data represent…
- **feat**: add save method to FrappeApi and FrappeV15 implementation
- **feat**: update FrappeV15 to use HttpStatus for response checks and add …
- **feat**: implement get dashboard chart endpoint
- **feat**: enhance getDashboardChart method with error handling and logging
- **feat**: add git hooks for commit message validation, post-merge checks,…
- **feat**: implement get report run
- **feat**: implemeted email make run
- **feat**: implemeted report view
- Feat/map doc run
- Feat/switch theme
- **feat**: implemeted seach widget run
- **feat**: add runDocMethod to FrappeV15 for executing document methods vi…
- **refactor**: standardize method naming in FrappeApi and FrappeV15 to fol…
- **refactor**: update validateLink method to return a Map instead of Valid…
- Fix/validate link fields

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
