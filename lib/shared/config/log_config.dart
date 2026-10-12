import 'package:flutter/foundation.dart';

class LogConfig {
  const LogConfig._();

  static const bool enableGeneralLog = kDebugMode;
  static const bool isPrettyJson = kDebugMode;

  /// bloc observer
  static const bool logOnBlocChange = false;
  static const bool logOnBlocCreate = false;
  static const bool logOnBlocClose = false;
  static const bool logOnBlocError = kDebugMode;
  static const bool logOnBlocEvent = kDebugMode;
  static const bool logOnBlocTransition = false;

  /// navigator observer
  static const bool enableNavigatorObserverLog = false;

  /// disposeBag
  static const bool enableDisposeBagLog = false;

  /// stream event log
  static const bool logOnStreamListen = false;
  static const bool logOnStreamData = false;
  static const bool logOnStreamError = false;
  static const bool logOnStreamDone = false;
  static const bool logOnStreamCancel = false;

  /// log interceptor
  static const bool enableLogInterceptor = kDebugMode;
  static const bool enableLogRequestInfo = kDebugMode;
  static const bool enableLogSuccessResponse = kDebugMode;
  static const bool enableLogErrorResponse = kDebugMode;

  /// enable log usecase
  static const bool enableLogUseCaseInput = false;
  static const bool enableLogUseCaseOutput = false;
  static const bool enableLogUseCaseError = kDebugMode;
}
