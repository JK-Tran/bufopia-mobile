import 'package:bufopia/shared/infrastructure/data/api/mapper/base_success_response_mapper.dart';
import 'package:bufopia/shared/infrastructure/data/api/model/results_response.dart';
import 'package:bufopia/shared/model/typedef.dart';

class ResultsJsonArrayResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, ResultsListResponse<T>> {
  @override
  // ignore: avoid-dynamic
  ResultsListResponse<T>? mapToDataModel({
    required dynamic response,
    Decoder<T>? decoder,
  }) {
    return decoder != null && response is Map<String, dynamic>
        ? ResultsListResponse.fromJson(response, (json) => decoder(json))
        : null;
  }
}
