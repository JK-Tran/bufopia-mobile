import 'package:bufopia/features/vocabulary/data/mapper/battle_option_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_question_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_question.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class BattleQuestionDataMapper
    extends BaseDataMapper<BattleQuestionData, BattleQuestion> {
  const BattleQuestionDataMapper(this._optionMapper);

  final BattleOptionDataMapper _optionMapper;

  @override
  BattleQuestion mapToEntity(BattleQuestionData? data) {
    return BattleQuestion(
      id: data?.id ?? '',
      topic: data?.topic ?? '',
      en: data?.en ?? '',
      vi: data?.vi ?? '',
      options: _optionMapper.mapToListEntity(data?.options),
    );
  }
}
