import 'package:bufopia/shared/constants/url_constants.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AuthAppServerApiClient extends RestApiClient {
  AuthAppServerApiClient(
    HeaderInterceptor headerInterceptor,
    AccessTokenInterceptor accessTokenInterceptor,
    RefreshTokenInterceptor refreshTokenInterceptor,
  ) : super(
        dio: DioBuilder.createDio(
          options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
          interceptors: [
            headerInterceptor,
            accessTokenInterceptor,
            refreshTokenInterceptor,
          ],
        ),
      );
}
