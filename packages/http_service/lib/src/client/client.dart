// ignore_for_file: public_member_api_docs

import 'dart:convert';

import 'package:http/http.dart' as http;

import '/src/client/interface.dart';
import '/src/status.dart';

typedef JSON = Map<String, dynamic>;

class HttpClient implements HttpClientInterface<JSON> {
  HttpClient({
    required final String authority,
    required final String path,
    final http.Client? client,
  })  : _client = client,
        _authority = authority,
        _path = path;

  final http.Client? _client;
  final String _authority;
  final String _path;

  @override
  Future<JSON> delete({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  }) async {
    final Uri uri = Uri.https(_authority, _path, queryParameters);
    final http.Response response = await _client?.delete(
          uri,
          headers: headers,
          body: body,
          encoding: encoding,
        ) ??
        await http.delete(
          uri,
          headers: headers,
          body: body,
          encoding: encoding,
        );

    final HttpStatus status = HttpStatus.fromCode(response.statusCode);
    final String responseBody = utf8.decode(response.bodyBytes);

    // ignore: always_put_control_body_on_new_line
    if (!status.isSucceeded) throw http.ClientException("$responseBody, $status", uri);

    return Map<String, dynamic>.from(json.decode(responseBody) as Map<dynamic, dynamic>);
  }

  @override
  Future<JSON> get({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
  }) async {
    final Uri uri = Uri.https(_authority, _path, queryParameters);
    final http.Response response = await _client?.get(uri, headers: headers) ?? await http.get(uri, headers: headers);

    final HttpStatus status = HttpStatus.fromCode(response.statusCode);
    final String responseBody = utf8.decode(response.bodyBytes);

    // ignore: always_put_control_body_on_new_line
    if (!status.isSucceeded) throw http.ClientException("$responseBody, $status", uri);

    return Map<String, dynamic>.from(json.decode(responseBody) as Map<dynamic, dynamic>);
  }

  @override
  Future<JSON> head({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
  }) async {
    final Uri uri = Uri.https(_authority, _path, queryParameters);
    final http.Response response = await _client?.head(uri, headers: headers) ?? await http.head(uri, headers: headers);

    final HttpStatus status = HttpStatus.fromCode(response.statusCode);
    final String responseBody = utf8.decode(response.bodyBytes);

    // ignore: always_put_control_body_on_new_line
    if (!status.isSucceeded) throw http.ClientException("$responseBody, $status", uri);

    return Map<String, dynamic>.from(json.decode(responseBody) as Map<dynamic, dynamic>);
  }

  @override
  Future<JSON> patch({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  }) async {
    final Uri uri = Uri.https(_authority, _path, queryParameters);
    final http.Response response = await _client?.patch(
          uri,
          headers: headers,
          body: body,
          encoding: encoding,
        ) ??
        await http.patch(
          uri,
          headers: headers,
          body: body,
          encoding: encoding,
        );

    final HttpStatus status = HttpStatus.fromCode(response.statusCode);
    final String responseBody = utf8.decode(response.bodyBytes);

    // ignore: always_put_control_body_on_new_line
    if (!status.isSucceeded) throw http.ClientException("$responseBody, $status", uri);

    return Map<String, dynamic>.from(json.decode(responseBody) as Map<dynamic, dynamic>);
  }

  @override
  Future<JSON> post({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  }) async {
    final Uri uri = Uri.https(_authority, _path, queryParameters);
    final http.Response response = await _client?.post(
          uri,
          headers: headers,
          body: body,
          encoding: encoding,
        ) ??
        await http.post(
          uri,
          headers: headers,
          body: body,
          encoding: encoding,
        );

    final HttpStatus status = HttpStatus.fromCode(response.statusCode);
    final String responseBody = utf8.decode(response.bodyBytes);

    // ignore: always_put_control_body_on_new_line
    if (!status.isSucceeded) throw http.ClientException("$responseBody, $status", uri);

    return Map<String, dynamic>.from(json.decode(responseBody) as Map<dynamic, dynamic>);
  }

  @override
  Future<JSON> put({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  }) async {
    final Uri uri = Uri.https(_authority, _path, queryParameters);
    final http.Response response = await _client?.put(
          uri,
          headers: headers,
          body: body,
          encoding: encoding,
        ) ??
        await http.put(
          uri,
          headers: headers,
          body: body,
          encoding: encoding,
        );

    final HttpStatus status = HttpStatus.fromCode(response.statusCode);
    final String responseBody = utf8.decode(response.bodyBytes);

    // ignore: always_put_control_body_on_new_line
    if (!status.isSucceeded) throw http.ClientException("$responseBody, $status", uri);

    return Map<String, dynamic>.from(json.decode(responseBody) as Map<dynamic, dynamic>);
  }

  @override
  Future<String> read({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  }) async {
    final Uri uri = Uri.https(_authority, _path, queryParameters);
    return _client?.read(uri, headers: headers) ?? http.read(uri, headers: headers);
  }

  @override
  void close() => _client?.close();
}
