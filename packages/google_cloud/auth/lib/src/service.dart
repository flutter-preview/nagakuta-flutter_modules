import 'package:googleapis_auth/auth_io.dart';
import 'package:mockito/annotations.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Service Account Credential Option
typedef ServiceAccountCredentialOption = ({
  String email,
  String identifier,
  String privateKey,
  String? secret,
  String? impersonatedUser,
});

// ignore: public_member_api_docs
typedef AuthClientArgs = ({
  ServiceAccountCredentialOption option,
  List<String> scopes,
});

@GenerateNiceMocks(
  <MockSpec<dynamic>>[
    MockSpec<AutoRefreshingAuthClient>(),
  ],
)
// ignore: public_member_api_docs
final FutureProviderFamily<AutoRefreshingAuthClient, AuthClientArgs> googleCloudAuthClientProvider =
    FutureProvider.family(
  (
    final FutureProviderRef<AutoRefreshingAuthClient> ref,
    final AuthClientArgs args,
  ) async {
    final ServiceAccountCredentials credentials = ref.watch(serviceAccountCredentialsProvider(args.option));
    return clientViaServiceAccount(credentials, args.scopes);
  },
  dependencies: <ProviderOrFamily>[
    serviceAccountCredentialsProvider,
  ],
);

@GenerateNiceMocks(
  <MockSpec<dynamic>>[
    MockSpec<ServiceAccountCredentials>(),
  ],
)
// ignore: public_member_api_docs
final ProviderFamily<ServiceAccountCredentials, ServiceAccountCredentialOption> serviceAccountCredentialsProvider =
    Provider.family(
  (
    final ProviderRef<ServiceAccountCredentials> ref,
    final ServiceAccountCredentialOption args,
  ) {
    final ClientId clientId = ClientId(args.identifier, args.secret);
    return ServiceAccountCredentials(args.email, clientId, args.privateKey);
  },
);
