import 'package:bufopia/features/word_guess/data/models/round_result_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/round_result.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class RoundResultDataMapper
    extends BaseDataMapper<RoundResultData, RoundResult> {
  const RoundResultDataMapper();

  @override
  RoundResult mapToEntity(RoundResultData? data) {
    return RoundResult(
      index: data?.index ?? 0,
      word: data?.word ?? '',
      vi: data?.vi ?? '',
      phonetic: data?.phonetic ?? '',
      example: data?.example ?? '',
      solverUid: data?.solverUid ?? '',
      isSkipped: data?.isSkipped ?? false,
      gainedScore: data?.gainedScore ?? 0,
    );
  }
}
