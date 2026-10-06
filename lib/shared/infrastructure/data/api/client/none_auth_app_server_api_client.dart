import 'package:bufopia/shared/constants/url_constants.dart';
import 'package:bufopia/shared/infrastructure/infrastructure.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class NoneAuthAppServerApiClient extends RestApiClient {
  NoneAuthAppServerApiClient(HeaderInterceptor headerInterceptor)
    : super(
        dio: DioBuilder.createDio(
          options: BaseOptions(baseUrl: UrlConstants.appApiBaseUrl),
          interceptors: [headerInterceptor as Interceptor],
        ),
      );
}
