import 'package:bufopia/shared/exception/remote/server_error_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_error.freezed.dart';

@freezed
sealed class ServerError with _$ServerError {
  const factory ServerError({
    /// server-defined status code
    int? generalServerStatusCode,

    /// server-defined error id
    String? generalServerErrorId,

    /// server-defined message
    String? generalMessage,
    @Default(ServerError.defaultErrors) List<ServerErrorDetail> errors,
  }) = _ServerError;
  const ServerError._();

  static const defaultGeneralServerStatusCode = -1;
  static const defaultGeneralServerErrorId = '';
  static const defaultGeneralMessage = '';
  static const defaultErrors = <ServerErrorDetail>[];
}
