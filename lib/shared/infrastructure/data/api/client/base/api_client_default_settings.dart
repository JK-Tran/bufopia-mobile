import 'package:bufopia/shared/infrastructure/data/api/mapper/base_error_response_mapper.dart';
import 'package:bufopia/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:bufopia/shared/infrastructure/data/api/middleware/custom_log_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class ApiClientDefaultSetting {
  const ApiClientDefaultSetting._();

  static const ErrorResponseMapperType defaultErrorResponseMapperType =
      ErrorResponseMapperType.jsonObject;
  static const SuccessResponseMapperType defaultSuccessResponseMapperType =
      SuccessResponseMapperType.dataJsonObject;

  // required interceptors
  static List<Interceptor> requiredInterceptors(Dio dio) => [
    if (kDebugMode) CustomLogInterceptor() as Interceptor,
    // ConnectivityInterceptor(),
    // RetryOnErrorInterceptor(dio),
  ];
}
