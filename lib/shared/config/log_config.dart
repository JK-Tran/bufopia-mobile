import 'package:flutter/foundation.dart';

class LogConfig {
  const LogConfig._();

  static const bool enableGeneralLog = kDebugMode;
  static const bool isPrettyJson = kDebugMode;

  /// bloc observer
  static const logOnBlocChange = false;
  static const logOnBlocCreate = false;
  static const logOnBlocClose = false;
  static const logOnBlocError = false;
  static const bool logOnBlocEvent = kDebugMode;
  static const logOnBlocTransition = false;

  /// navigator observer
  static const bool enableNavigatorObserverLog = kDebugMode;

  /// disposeBag
  static const enableDisposeBagLog = false;

  /// stream event log
  static const logOnStreamListen = false;
  static const logOnStreamData = false;
  static const logOnStreamError = false;
  static const logOnStreamDone = false;
  static const logOnStreamCancel = false;

  /// log interceptor
  static const bool enableLogInterceptor = kDebugMode;
  static const bool enableLogRequestInfo = kDebugMode;
  static const bool enableLogSuccessResponse = kDebugMode;
  static const bool enableLogErrorResponse = kDebugMode;

  /// enable log usecase
  static const bool enableLogUseCaseInput = kDebugMode;
  static const enableLogUseCaseOutput = false;
  static const bool enableLogUseCaseError = kDebugMode;
}
