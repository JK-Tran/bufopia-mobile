import 'package:bufopia/shared/exception/remote/server_error.dart';
import 'package:bufopia/shared/exception/remote/server_error_detail.dart';
import 'package:bufopia/shared/infrastructure/data/api/mapper/base_error_response_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
// ignore: avoid-dynamic
class JsonArrayErrorResponseMapper
    extends BaseErrorResponseMapper<List<dynamic>> {
  @override
  // ignore: avoid-dynamic
  ServerError mapToServerError(List<dynamic>? data) {
    return ServerError(
      errors:
          data
              ?.map(
                (dynamic e) {
                  final jsonObject = e as Map<String, dynamic>;
                  return ServerErrorDetail(
                    serverStatusCode: jsonObject['code'] as int?,
                    message: jsonObject['message'] as String?,
                  );
                },
              )
              .toList(growable: false) ??
          [],
    );
  }
}
