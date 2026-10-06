import 'package:bufopia/shared/exception/remote/server_error.dart';
import 'package:bufopia/shared/infrastructure/data/api/mapper/base_error_response_mapper.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class LineErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? json) {
    return ServerError(generalMessage: json?['error_description'] as String?);
  }
}
