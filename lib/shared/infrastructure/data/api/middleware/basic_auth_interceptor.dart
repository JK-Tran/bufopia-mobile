import 'dart:convert';

import 'package:bufopia/shared/constants/server/server_request_response_constants.dart';
import 'package:bufopia/shared/infrastructure/data/api/middleware/base_interceptor.dart';
import 'package:dio/dio.dart';

class BasicAuthInterceptor extends BaseInterceptor {
  BasicAuthInterceptor({required this.username, required this.password});

  final String password;
  final String username;

  @override
  int get priority => BaseInterceptor.basicAuthPriority;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers[ServerRequestResponseConstants.basicAuthorization] =
        _basicAuthHeader();

    return super.onRequest(options, handler);
  }

  String _basicAuthHeader() {
    return 'Basic ${base64Encode(utf8.encode('$username:$password'))}';
  }
}
