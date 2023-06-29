import 'dart:convert';
import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http_service/src/client/client.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'client_test.mocks.dart';

// ignore: non_constant_identifier_names
final Map<String, dynamic> EXPECTED_JSON = <String, dynamic>{"result": "MOCKED SUCCESS RESULT"};

@GenerateNiceMocks(
  <MockSpec<dynamic>>[
    MockSpec<http.Client>(),
    MockSpec<http.Response>(),
  ],
)
void main() {
  group("HttpClient", () {
    final MockClient mockClient = MockClient();
    final MockResponse mockResponse = MockResponse();

    setUp(() {
      when(mockResponse.bodyBytes).thenReturn(Uint8List.fromList(json.encode(EXPECTED_JSON).codeUnits));
      when(mockResponse.statusCode).thenReturn(200);
    });

    tearDown(() {
      reset(mockClient);
      reset(mockResponse);
    });

    group("delete", () {
      setUp(() async {
        when(
          mockClient.delete(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).thenAnswer(
          (final Invocation realInvocation) async => mockResponse,
        );
      });

      test("succeeded", () async {
        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        final JSON response = await client.delete();
        expect(response, isA<JSON>());
        expect(response, equals(EXPECTED_JSON));

        verify(
          mockClient.delete(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });

      test("status code is not valid", () async {
        when(mockResponse.statusCode).thenReturn(403);

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.delete(),
          throwsA(
            isA<http.ClientException>().having(
              (final http.ClientException exception) => exception.message,
              "message",
              equals('{"result":"MOCKED SUCCESS RESULT"}, HTTP Status Code: 403 Forbidden'),
            ),
          ),
        );

        verify(
          mockClient.delete(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });

      test("failed", () async {
        when(
          mockClient.delete(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).thenThrow(Exception("MOCKED DELETE EXCEPTION"));

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.delete(),
          throwsA(
            isException.having(
              (final Exception exception) => exception.toString(),
              "message",
              equals("Exception: MOCKED DELETE EXCEPTION"),
            ),
          ),
        );

        verify(
          mockClient.delete(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });
    });

    group("get", () {
      setUp(() async {
        when(
          mockClient.get(
            any,
            headers: anyNamed("headers"),
          ),
        ).thenAnswer(
          (final Invocation realInvocation) async => mockResponse,
        );
      });

      test("succeeded", () async {
        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        final JSON response = await client.get();
        expect(response, isA<JSON>());
        expect(response, equals(EXPECTED_JSON));

        verify(
          mockClient.get(
            any,
            headers: anyNamed("headers"),
          ),
        ).called(1);
      });

      test("status code is not valid", () async {
        when(mockResponse.statusCode).thenReturn(403);

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.get(),
          throwsA(
            isA<http.ClientException>().having(
              (final http.ClientException exception) => exception.message,
              "message",
              equals('{"result":"MOCKED SUCCESS RESULT"}, HTTP Status Code: 403 Forbidden'),
            ),
          ),
        );

        verify(
          mockClient.get(
            any,
            headers: anyNamed("headers"),
          ),
        ).called(1);
      });

      test("failed", () async {
        when(
          mockClient.get(
            any,
            headers: anyNamed("headers"),
          ),
        ).thenThrow(Exception("MOCKED GET EXCEPTION"));

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.get(),
          throwsA(
            isException.having(
              (final Exception exception) => exception.toString(),
              "message",
              equals("Exception: MOCKED GET EXCEPTION"),
            ),
          ),
        );

        verify(
          mockClient.get(
            any,
            headers: anyNamed("headers"),
          ),
        ).called(1);
      });
    });

    group("head", () {
      setUp(() async {
        when(
          mockClient.head(
            any,
            headers: anyNamed("headers"),
          ),
        ).thenAnswer(
          (final Invocation realInvocation) async => mockResponse,
        );
      });

      test("succeeded", () async {
        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        final JSON response = await client.head();
        expect(response, isA<JSON>());
        expect(response, equals(EXPECTED_JSON));

        verify(
          mockClient.head(
            any,
            headers: anyNamed("headers"),
          ),
        ).called(1);
      });

      test("status code is not valid", () async {
        when(mockResponse.statusCode).thenReturn(403);

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.head(),
          throwsA(
            isA<http.ClientException>().having(
              (final http.ClientException exception) => exception.message,
              "message",
              equals('{"result":"MOCKED SUCCESS RESULT"}, HTTP Status Code: 403 Forbidden'),
            ),
          ),
        );

        verify(
          mockClient.head(
            any,
            headers: anyNamed("headers"),
          ),
        ).called(1);
      });

      test("failed", () async {
        when(
          mockClient.head(
            any,
            headers: anyNamed("headers"),
          ),
        ).thenThrow(Exception("MOCKED HEAD EXCEPTION"));

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.head(),
          throwsA(
            isException.having(
              (final Exception exception) => exception.toString(),
              "message",
              equals("Exception: MOCKED HEAD EXCEPTION"),
            ),
          ),
        );

        verify(
          mockClient.head(
            any,
            headers: anyNamed("headers"),
          ),
        ).called(1);
      });
    });

    group("patch", () {
      setUp(() async {
        when(
          mockClient.patch(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).thenAnswer(
          (final Invocation realInvocation) async => mockResponse,
        );
      });

      test("succeeded", () async {
        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        final JSON response = await client.patch();
        expect(response, isA<JSON>());
        expect(response, equals(EXPECTED_JSON));

        verify(
          mockClient.patch(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });

      test("status code is not valid", () async {
        when(mockResponse.statusCode).thenReturn(403);

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.patch(),
          throwsA(
            isA<http.ClientException>().having(
              (final http.ClientException exception) => exception.message,
              "message",
              equals('{"result":"MOCKED SUCCESS RESULT"}, HTTP Status Code: 403 Forbidden'),
            ),
          ),
        );

        verify(
          mockClient.patch(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });

      test("failed", () async {
        when(
          mockClient.patch(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).thenThrow(Exception("MOCKED PATCH EXCEPTION"));

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.patch(),
          throwsA(
            isException.having(
              (final Exception exception) => exception.toString(),
              "message",
              equals("Exception: MOCKED PATCH EXCEPTION"),
            ),
          ),
        );

        verify(
          mockClient.patch(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });
    });

    group("post", () {
      setUp(() async {
        when(
          mockClient.post(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).thenAnswer(
          (final Invocation realInvocation) async => mockResponse,
        );
      });

      test("succeeded", () async {
        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        final JSON response = await client.post();
        expect(response, isA<JSON>());
        expect(response, equals(EXPECTED_JSON));

        verify(
          mockClient.post(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });

      test("status code is not valid", () async {
        when(mockResponse.statusCode).thenReturn(403);

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.post(),
          throwsA(
            isA<http.ClientException>().having(
              (final http.ClientException exception) => exception.message,
              "message",
              equals('{"result":"MOCKED SUCCESS RESULT"}, HTTP Status Code: 403 Forbidden'),
            ),
          ),
        );

        verify(
          mockClient.post(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });

      test("failed", () async {
        when(
          mockClient.post(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).thenThrow(Exception("MOCKED POST EXCEPTION"));

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.post(),
          throwsA(
            isException.having(
              (final Exception exception) => exception.toString(),
              "message",
              equals("Exception: MOCKED POST EXCEPTION"),
            ),
          ),
        );

        verify(
          mockClient.post(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });
    });

    group("put", () {
      setUp(() async {
        when(
          mockClient.put(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).thenAnswer(
          (final Invocation realInvocation) async => mockResponse,
        );
      });

      test("succeeded", () async {
        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        final JSON response = await client.put();
        expect(response, isA<JSON>());
        expect(response, equals(EXPECTED_JSON));

        verify(
          mockClient.put(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });

      test("status code is not valid", () async {
        when(mockResponse.statusCode).thenReturn(403);

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.put(),
          throwsA(
            isA<http.ClientException>().having(
              (final http.ClientException exception) => exception.message,
              "message",
              equals('{"result":"MOCKED SUCCESS RESULT"}, HTTP Status Code: 403 Forbidden'),
            ),
          ),
        );

        verify(
          mockClient.put(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });

      test("failed", () async {
        when(
          mockClient.put(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).thenThrow(Exception("MOCKED PUT EXCEPTION"));

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.put(),
          throwsA(
            isException.having(
              (final Exception exception) => exception.toString(),
              "message",
              equals("Exception: MOCKED PUT EXCEPTION"),
            ),
          ),
        );

        verify(
          mockClient.put(
            any,
            headers: anyNamed("headers"),
            body: anyNamed("body"),
            encoding: anyNamed("encoding"),
          ),
        ).called(1);
      });
    });

    group("read", () {
      setUp(() async {
        when(
          mockClient.read(
            any,
            headers: anyNamed("headers"),
          ),
        ).thenAnswer(
          (final Invocation realInvocation) async => "MOCKED SUCCESS RESULT",
        );
      });

      test("succeeded", () async {
        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        final String response = await client.read();
        expect(response, isA<String>());
        expect(response, equals("MOCKED SUCCESS RESULT"));

        verify(
          mockClient.read(
            any,
            headers: anyNamed("headers"),
          ),
        ).called(1);
      });

      test("failed", () async {
        when(
          mockClient.read(
            any,
            headers: anyNamed("headers"),
          ),
        ).thenThrow(Exception("MOCKED READ EXCEPTION"));

        final HttpClient client = HttpClient(authority: "example.com", path: "path", client: mockClient);

        await expectLater(
          client.read(),
          throwsA(
            isException.having(
              (final Exception exception) => exception.toString(),
              "message",
              equals("Exception: MOCKED READ EXCEPTION"),
            ),
          ),
        );

        verify(
          mockClient.read(
            any,
            headers: anyNamed("headers"),
          ),
        ).called(1);
      });
    });
  });
}
