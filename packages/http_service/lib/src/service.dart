// ignore_for_file: public_member_api_docs

import 'dart:math' as math;

import 'package:http/http.dart';
import 'package:http/retry.dart';
import 'package:mockito/annotations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/src/client/client.dart';

typedef ResponseCallback = FutureOr<bool> Function(BaseResponse);
typedef ErrorCallback = FutureOr<bool> Function(Object, StackTrace);
typedef DelayCallback = Duration Function(int);
typedef RetryCallback = FutureOr<void> Function(BaseRequest, BaseResponse?, int);

typedef HttpClientArgs = ({
  String authority,
  String path,
  Client? client,
});
typedef HttpRetryClientArgs = ({
  String authority,
  String path,
  Client? client,
  int? retries,
  ResponseCallback? when,
  ErrorCallback? whenError,
  DelayCallback? delay,
  RetryCallback? onRetry,
});
typedef HttpRetryWithDelaysClientArgs = ({
  String authority,
  String path,
  Client? client,
  Iterable<Duration> delays,
  ResponseCallback? when,
  ErrorCallback? whenError,
  RetryCallback? onRetry,
});

/// Http Service
@GenerateNiceMocks(
  <MockSpec<dynamic>>[
    MockSpec<HttpClient>(),
  ],
)
final AutoDisposeProviderFamily<HttpClient, HttpClientArgs> httpClientProvider = Provider.autoDispose.family(
  (
    final AutoDisposeProviderRef<HttpClient> ref,
    final HttpClientArgs args,
  ) {
    final HttpClient client = HttpClient(
      authority: args.authority,
      path: args.path,
      client: args.client,
    );

    ref
      ..onCancel(client.close)
      ..onDispose(client.close);

    return client;
  },
);

/// Http Retry Service
final AutoDisposeProviderFamily<HttpClient, HttpRetryClientArgs> httpRetryClientProvider = Provider.autoDispose.family((
  final AutoDisposeProviderRef<HttpClient> ref,
  final HttpRetryClientArgs args,
) {
  final HttpClient client = HttpClient(
    authority: args.authority,
    path: args.path,
    client: RetryClient(
      args.client ?? Client(),
      retries: args.retries ?? 3,
      when: args.when ?? _defaultWhen,
      whenError: args.whenError ?? _defaultWhenError,
      delay: args.delay ?? _defaultDelay,
      onRetry: args.onRetry,
    ),
  );

  ref
    ..onCancel(client.close)
    ..onDispose(client.close);

  return client;
});

/// Http Retry With Delays Service
final AutoDisposeProviderFamily<HttpClient, HttpRetryWithDelaysClientArgs> httpRetryWithDelaysClientProvider =
    Provider.autoDispose.family((
  final AutoDisposeProviderRef<HttpClient> ref,
  final HttpRetryWithDelaysClientArgs args,
) {
  final HttpClient client = HttpClient(
    authority: args.authority,
    path: args.path,
    client: RetryClient.withDelays(
      args.client ?? Client(),
      args.delays,
      when: args.when ?? _defaultWhen,
      whenError: args.whenError ?? _defaultWhenError,
      onRetry: args.onRetry,
    ),
  );

  ref
    ..onCancel(client.close)
    ..onDispose(client.close);

  return client;
});

bool _defaultWhen(final BaseResponse response) => response.statusCode == 503;
bool _defaultWhenError(final Object error, final StackTrace stackTrace) => false;
Duration _defaultDelay(final int retryCount) => const Duration(milliseconds: 500) * math.pow(1.5, retryCount);
