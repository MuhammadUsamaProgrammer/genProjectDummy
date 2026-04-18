part of '../../wird_book.dart';

class ApiService {
  final Dio client;

  ApiService({required this.client});
}

final apiServiceProvider = Provider<ApiService>((ref) {
  final client =
      Dio(
          BaseOptions(
            baseUrl: ref.read(envManagerProvider).baseUrl,
            contentType: "application/json",
            headers: {},
            connectTimeout: const Duration(seconds: 120),
            receiveTimeout: const Duration(seconds: 120),
          ),
        )
        ..interceptors.addAll([
          AuthorizationInterceptor(ref),
          if (kDebugMode)
            PrettyDioLogger(
              requestBody: kDebugMode,
              requestHeader: kDebugMode,
              responseBody: kDebugMode,
            ),
        ])
        ..httpClientAdapter = adapter();

  return ApiService(client: client);
});
