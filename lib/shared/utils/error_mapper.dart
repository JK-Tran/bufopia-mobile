import 'package:bufopia/shared/exception/base/app_exception.dart';
import 'package:bufopia/shared/exception/remote/remote_exception.dart';
import 'package:bufopia/shared/exception/uncaught/app_uncaught_exception.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/widgets.dart';

abstract final class ErrorMapper {
  static String getMessage(Object error, {BuildContext? context}) {
    final l10n = context?.l10n ?? S.current;
    if (error is AppUncaughtException) {
      final root = error.rootError;
      if (root is AppException) {
        return _mapAppException(root, l10n: l10n) ?? l10n.unknownError;
      }
      return l10n.unknownError;
    }

    if (error is AppException) {
      return _mapAppException(error, l10n: l10n) ?? l10n.unknownError;
    }

    return l10n.unknownError;
  }

  static String? _mapAppException(
    AppException exception, {
    AppLocalizations? l10n,
  }) {
    final strings = l10n ?? S.current;
    if (exception is RemoteException) {
      switch (exception.kind) {
        case RemoteExceptionKind.noInternet:
        case RemoteExceptionKind.network:
          return strings.networkError;
        case RemoteExceptionKind.timeout:
          return strings.timeoutError;
        case RemoteExceptionKind.sessionExpired:
        case RemoteExceptionKind.refreshTokenFailed:
          return strings.sessionExpiredError;
        case RemoteExceptionKind.serverDefined:
          if (exception.httpErrorCode == 401) {
            return strings.unauthorizedError;
          } else if (exception.httpErrorCode == 403) {
            return strings.forbiddenError;
          } else if (exception.httpErrorCode == 404) {
            return strings.notFoundError;
          }
          final serverMsg = exception.generalServerMessage;
          if (serverMsg != null && serverMsg.isNotEmpty) {
            return serverMsg;
          }
          return strings.serverError;
        case RemoteExceptionKind.serverUndefined:
          return strings.serverError;
        case RemoteExceptionKind.badCertificate:
        case RemoteExceptionKind.decodeError:
        case RemoteExceptionKind.cancellation:
        case RemoteExceptionKind.unknown:
          return strings.unknownError;
      }
    }
    return null;
  }
}
