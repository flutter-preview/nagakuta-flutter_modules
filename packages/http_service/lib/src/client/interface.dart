import 'dart:convert';

// ignore: public_member_api_docs
mixin HttpClientInterface<ResponseType> {
  /// DELETE method
  Future<ResponseType> delete({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  });

  /// GET method
  Future<ResponseType> get({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
  });

  /// HEAD method
  Future<ResponseType> head({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
  });

  /// PATCH method
  Future<ResponseType> patch({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  });

  /// POST method
  Future<ResponseType> post({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  });

  /// PUT method
  Future<ResponseType> put({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  });

  /// READ method
  Future<String> read({
    final Map<String, dynamic>? queryParameters,
    final Map<String, String>? headers,
    final Object? body,
    final Encoding? encoding,
  });

  // ignore: public_member_api_docs
  void close();
}
