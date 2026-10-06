import 'package:bufopia/shared/constants/url_constants.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class RefreshTokenApiClient extends RestApiClient {
  RefreshTokenApiClient(
    HeaderInterceptor headerInterceptor,
    AccessTokenInterceptor accessTokenInterceptor,
  ) : super(
        dio: DioBuilder.createDio(
          options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
          interceptors: [
            headerInterceptor as Interceptor,
            accessTokenInterceptor as Interceptor,
          ],
        ),
      );
}
