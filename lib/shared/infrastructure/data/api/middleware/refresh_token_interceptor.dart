import 'dart:collection';
import 'dart:io';

import 'package:bufopia/shared/constants/server/server_request_response_constants.dart';
import 'package:bufopia/shared/infrastructure/data/api/client/none_auth_app_server_api_client.dart';
import 'package:bufopia/shared/infrastructure/data/api/middleware/base_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class RefreshTokenInterceptor extends BaseInterceptor {
  RefreshTokenInterceptor(this._noneAuthAppServerApiClient);

  final NoneAuthAppServerApiClient _noneAuthAppServerApiClient;

  var _isRefreshing = false;
  final _queue = Queue<(RequestOptions, ErrorInterceptorHandler)>();

  @override
  int get priority => BaseInterceptor.refreshTokenPriority;

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == HttpStatus.unauthorized) {
      final options = err.response!.requestOptions;
      await _onExpiredToken(options: options, handler: handler);
    } else {
      handler.next(err);
    }
  }

  void _putAccessToken({
    required Map<String, dynamic> headers,
    required String accessToken,
  }) {
    headers[ServerRequestResponseConstants.basicAuthorization] =
        '${ServerRequestResponseConstants.bearer} $accessToken';
  }

  Future<void> _onExpiredToken({
    required RequestOptions options,
    required ErrorInterceptorHandler handler,
  }) async {
    _queue.addLast((options, handler));
    if (!_isRefreshing) {
      _isRefreshing = true;
      try {
        // final newToken = await sl<AuthRepository>().refreshToken();
        await _onRefreshTokenSuccess('123');
      } on Exception catch (e) {
        _onRefreshTokenError(e);
        // // Force app logout on token failure
        // sl<AppBloc>().add(const AppEvent.loggedOut());
      } finally {
        _isRefreshing = false;
        _queue.clear();
      }
    }
  }

  Future<void> _onRefreshTokenSuccess(String newToken) async {
    await Future.wait(
      _queue.map(
        (requestInfo) => _requestWithNewToken(
          options: requestInfo.$1,
          handler: requestInfo.$2,
          newAccessToken: newToken,
        ),
      ),
    );
  }

  void _onRefreshTokenError(Object? error) {
    for (final element in _queue) {
      final options = element.$1;
      element.$2.next(DioException(requestOptions: options, error: error));
    }
  }

  Future<void> _requestWithNewToken({
    required RequestOptions options,
    required ErrorInterceptorHandler handler,
    required String newAccessToken,
  }) async {
    _putAccessToken(headers: options.headers, accessToken: newAccessToken);

    try {
      final response = await _noneAuthAppServerApiClient.dio.fetch<dynamic>(
        options,
      );
      handler.resolve(response);
    } on Exception catch (e) {
      handler.next(DioException(requestOptions: options, error: e));
    }
  }
}
