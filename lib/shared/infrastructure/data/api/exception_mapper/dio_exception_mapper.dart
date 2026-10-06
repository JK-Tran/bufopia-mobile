import 'dart:io';

import 'package:bufopia/shared/exception/remote/remote_exception.dart';
import 'package:bufopia/shared/infrastructure/data/api/mapper/base_error_response_mapper.dart';
import 'package:dio/dio.dart';

class DioExceptionMapper {
  DioExceptionMapper(this._errorResponseMapper);

  final BaseErrorResponseMapper<dynamic> _errorResponseMapper;

  RemoteException map(Object? exception) {
    if (exception is RemoteException) {
      return exception;
    }

    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.cancel:
          return const RemoteException(kind: RemoteExceptionKind.cancellation);
        case DioExceptionType.connectionTimeout:
        case DioExceptionType.receiveTimeout:
        case DioExceptionType.sendTimeout:
          return RemoteException(
            kind: RemoteExceptionKind.timeout,
            rootException: exception,
          );
        case DioExceptionType.badResponse:
          final httpErrorCode = exception.response?.statusCode ?? -1;

          /// server-defined error
          if (exception.response?.data != null) {
            final serverError = _errorResponseMapper.mapToServerError(
              exception.response!.data,
            );
            if (serverError.generalMessage?.compareTo(
                  'Your session expire, please login again',
                ) ==
                0) {
              return RemoteException(
                kind: RemoteExceptionKind.sessionExpired,
                httpErrorCode: httpErrorCode,
                rootException: exception,
              );
            }

            return RemoteException(
              kind: RemoteExceptionKind.serverDefined,
              httpErrorCode: httpErrorCode,
              serverError: serverError,
            );
          }

          return RemoteException(
            kind: RemoteExceptionKind.serverUndefined,
            httpErrorCode: httpErrorCode,
            rootException: exception,
          );

        case DioExceptionType.badCertificate:
          return RemoteException(
            kind: RemoteExceptionKind.badCertificate,
            rootException: exception,
          );
        case DioExceptionType.connectionError:
          return RemoteException(
            kind: RemoteExceptionKind.network,
            rootException: exception,
          );
        case DioExceptionType.unknown:
          if (exception.error is SocketException) {
            return RemoteException(
              kind: RemoteExceptionKind.network,
              rootException: exception,
            );
          }

          if (exception.error is RemoteException) {
            return exception.error! as RemoteException;
          }
        case DioExceptionType.transformTimeout:
          throw UnimplementedError();
      }
    }

    return RemoteException(
      kind: RemoteExceptionKind.unknown,
      rootException: exception,
    );
  }
}
