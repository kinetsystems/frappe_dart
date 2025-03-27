import 'package:dio/dio.dart';
import 'package:frappe_dart/frappe_dart.dart';
import 'package:frappe_dart/src/models/desk_sidebar_items_response/desk_message.dart';
import 'package:frappe_dart/src/models/desktop_page_response/message.dart';
import 'package:frappe_dart/src/models/desktop_page_response/shortcut_item.dart';
import 'package:frappe_dart/src/models/desktop_page_response/shortcuts.dart';
import 'package:frappe_dart/src/models/get_doc_response/doc.dart';
import 'package:frappe_dart/src/models/savedocs_response/savedocs_response.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'frappe_api_test.mocks.dart';

// Generate mock class
@GenerateMocks([Dio])
void main() {
  late FrappeV15 frappeApi;
  late MockDio mockDio;

  setUp(() {
    mockDio = MockDio();
    frappeApi = FrappeV15(baseUrl: 'https://example.com', dio: mockDio);
  });

  test('login should return LoginResponse when successful', () async {
    final loginRequest = LoginRequest(usr: 'test', pwd: 'password');
    final responseData = LoginResponse.fromJson(
      {'message': 'Logged In', 'user_id': 'test_user'},
    );

    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: responseData.toJson(),
        statusCode: 200,
        requestOptions: RequestOptions(),
      ),
    );

    final response = await frappeApi.login(loginRequest);

    expect(response.userId, 'test_user');
  });

  test('logout should return success response', () async {
    final responseData = LogoutResponse(message: 'user logged out');
    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      ),
    ).thenAnswer(
      (_) async => Response(
        statusCode: 200,
        data: responseData.toMap(),
        requestOptions: RequestOptions(),
      ),
    );

    final response = await frappeApi.logout();
    expect(response.message, 'user logged out');
  });

  test(
      '''getDeskSideBarItems should return DeskSidebarItemsResponse when successful''',
      () async {
    final responseData = DeskSidebarItemsResponse(
      message: DeskMessage(
        pages: [
          DeskPage(label: 'Module 1'),
          DeskPage(label: 'Module 2'),
        ],
      ),
    );

    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        options: anyNamed('options'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: responseData.toMap(),
        statusCode: 200,
        requestOptions: RequestOptions(),
      ),
    );

    final response = await frappeApi.getDeskSideBarItems();

    expect(response.message!.pages!.length, 2);
    expect(response.message!.pages!.first.label, 'Module 1');
    expect(response.message!.pages!.last.label, 'Module 2');
  });

  test('getDeskSideBarItems should throw an exception when DioException occurs',
      () async {
    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        options: anyNamed('options'),
      ),
    ).thenThrow(
      DioException(
        type: DioExceptionType.connectionTimeout,
        requestOptions: RequestOptions(),
      ),
    );

    expect(
      () async => frappeApi.getDeskSideBarItems(),
      throwsA(isA<Exception>()),
    );
  });

  test('getDesktopPage should return DesktopPageResponse when successful',
      () async {
    final deskPageRequest = DesktopPageRequest(parentPage: 'Home');

    final responseData = DesktopPageResponse(
      message: Message(
        shortcuts: Shortcuts(
          items: [ShortcutItem(name: 'close'), ShortcutItem(name: 'next')],
        ),
      ),
    );

    // Stub Dio to return mock response
    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: responseData.toMap(),
        statusCode: 200,
        requestOptions: RequestOptions(),
      ),
    );

    // Call API method
    final response = await frappeApi.getDesktopPage(deskPageRequest);

    // Assertions
    expect(
      response.message!.shortcuts!.items!.length,
      responseData.message!.shortcuts!.items!.length,
    );
    expect(response.message!.shortcuts!.items!.length, 2);
    expect(response.message!.shortcuts!.items!.first.name, 'close');
  });

  test('getNumberCard should return NumberCardResponse when successful',
      () async {
    const cardName = 'TestCard';

    final numberCardDoc = GetDocResponse(
      docs: [
        Doc(
          name: cardName,
          dynamicFiltersJson: '{"key": "value"}',
        ),
      ],
    );

    final responseData = NumberCardResponse(
      message: 2,
    );

    // Stub getdoc's internal Dio call
    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        data: {'doctype': 'Number Card', 'name': cardName},
        options: anyNamed('options'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: numberCardDoc.toMap(),
        statusCode: 200,
        requestOptions: RequestOptions(),
      ),
    );

    await frappeApi.getdoc('Number Card', cardName);

    // Stub Dio to return mock response for getNumberCard
    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        options: anyNamed('options'),
        data: anyNamed('data'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: responseData.toMap(),
        statusCode: 200,
        requestOptions: RequestOptions(),
      ),
    );

    // Call API method
    final response = await frappeApi.getNumberCard(cardName);

    // Assertions
    expect(response.message, responseData.message);
  });
  test('Get doctype should return GetDoctypeResponse when successful',
      () async {
    final doctypeResponse = GetDoctypeResponse(
      docs: [],
      userSettings: 'user_settings',
    ); // Mock response

    // Stub Dio call
    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      ),
    ).thenAnswer(
      (_) async => Response(
        data: doctypeResponse.toMap(),
        statusCode: 200,
        requestOptions: RequestOptions(),
      ),
    );

    // Call API method
    final response = await frappeApi.getDoctype('doctype');

    // Assertions
    expect(response, isA<GetDoctypeResponse>()); // Check type
    expect(response.toMap(), doctypeResponse.toMap()); // Compare data
  });

  test('Savedocs should return SavedocsResponse when successful', () async {
    const responseBody = SavedocsReponse(docs: ['doc1', 'doc2']);
    final requestBody = SavedocsRequest(
      doc: {'doc': 'sampleDoc'}, // Replace `anyNamed('doc')` with a valid value
      action: Action.Save,
    );

    when(
      mockDio.post<Map<String, dynamic>>(
        any,
        data: anyNamed('data'),
        options: anyNamed('options'),
      ),
    ).thenAnswer(
      (_) async => Response<Map<String, dynamic>>(
        requestOptions: RequestOptions(path: 's'), 
        statusCode: 200,
        data: responseBody.toMap(),
      ),
    );

    final response = await frappeApi.savedocs(
      document: ['doc1', 'doc2'],
      action: 'save',
      toJson: () => 'doc',
      fromMap: (Map<String, dynamic> map) =>
          SavedocsReponse.fromMap(map, (Map<String, dynamic> map) => map),
    );

    expect(response.docs!.length, responseBody.docs!.length);
  });
}
