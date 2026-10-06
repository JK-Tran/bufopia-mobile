import 'package:bufopia/shared/exception/remote/remote_exception.dart';
import 'package:bufopia/shared/exception/remote/server_error.dart';
import 'package:bufopia/shared/infrastructure/data/api/mapper/base_error_response_mapper/json_array_error_response_mapper.dart';
import 'package:bufopia/shared/infrastructure/data/api/mapper/base_error_response_mapper/json_object_error_response_mapper.dart';
import 'package:bufopia/shared/infrastructure/data/api/mapper/base_error_response_mapper/line_error_response_mapper.dart';

enum ErrorResponseMapperType { jsonObject, jsonArray, line }

abstract class BaseErrorResponseMapper<T> {
  const BaseErrorResponseMapper();

  factory BaseErrorResponseMapper.fromType(ErrorResponseMapperType type) {
    switch (type) {
      case ErrorResponseMapperType.jsonObject:
        return JsonObjectErrorResponseMapper() as BaseErrorResponseMapper<T>;
      case ErrorResponseMapperType.jsonArray:
        return JsonArrayErrorResponseMapper() as BaseErrorResponseMapper<T>;
      case ErrorResponseMapperType.line:
        return LineErrorResponseMapper() as BaseErrorResponseMapper<T>;
    }
  }

  ServerError map(dynamic errorResponse) {
    try {
      if (errorResponse is! T) {
        throw RemoteException(
          kind: RemoteExceptionKind.decodeError,
          rootException: 'Response $errorResponse is not $T',
        );
      }

      final serverError = mapToServerError(errorResponse);

      return serverError;
    } on RemoteException catch (_) {
      rethrow;
    } catch (e) {
      throw RemoteException(
        kind: RemoteExceptionKind.decodeError,
        rootException: e,
      );
    }
  }

  ServerError mapToServerError(T? errorResponse);
}
