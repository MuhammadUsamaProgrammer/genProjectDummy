import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';


mixin ClientMixin on HttpClientAdapter {
  @override
  Future<ResponseBody> fetch(
      RequestOptions options,
      Stream<Uint8List>? requestStream,
      Future<void>? cancelFuture,
      ) async {
    final token = null;
    if (token != null) {
      options.headers[HttpHeaders.authorizationHeader] = 'Bearer $token';
    }
    return super.fetch(options, requestStream, cancelFuture);
  }
}
