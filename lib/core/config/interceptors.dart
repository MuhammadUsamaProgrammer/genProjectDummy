part of '../../wird_book.dart';

class AuthorizationInterceptor extends Interceptor {
  AuthorizationInterceptor(this.ref);

  final Ref ref;

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final token = ref.read(localDataProvider).accessToken;

    if (token.isNotEmpty) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }

    super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final response = err.response;
    // print("error ${response?.data}");
    if (err.type == DioExceptionType.connectionError ||
        err.type == DioExceptionType.unknown && err.error is SocketException) {
      $showMessage("No Internet Connection", isError: true);
    } else if (response?.statusCode == 401) {
      // ref.read(authProvider.notifier).onSignOut();
    }
    handler.reject(err);
  }
}
