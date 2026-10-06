import 'package:bufopia/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:bufopia/shared/model/typedef.dart';

class PlainResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({required dynamic response, Decoder<T>? decoder}) {
    assert(decoder == null, 'decoder must be null for PlainResponseMapper');

    return response is T ? response : null;
  }
}
