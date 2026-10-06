import 'package:bufopia/shared/exception/remote/server_error.dart';
import 'package:bufopia/shared/exception/remote/server_error_detail.dart';
import 'package:bufopia/shared/infrastructure/data/api/mapper/base_error_response_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class JsonObjectErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? data) {
    if (data != null && data['errors'] is List) {
      final errors = (data['errors'] as List).cast<Map<String, dynamic>>();
      final value = errors.isNotEmpty
          ? errors.first['message'] as String?
          : null;
      return ServerError(
        errors: errors
            .map(
              (obj) => ServerErrorDetail(
                // serverStatusCode: obj['code'],
                message: obj['message'] as String?,
              ),
            )
            .toList(growable: false),
        generalMessage: value,
      );
    }

    final dynamic messages = data?['_messages'];
    String? message;
    if (messages is List && messages.isNotEmpty) {
      message = messages.first.toString();
    } else if (data?['error'] != null) {
      message = data!['error'].toString();
    } else if (data?['message'] != null) {
      message = data!['message'].toString();
    }

    return ServerError(
      generalServerStatusCode: data?['_status'] as int?,
      generalServerErrorId: data?['error_code'] as String?,
      generalMessage: message,
    );
  }
}
