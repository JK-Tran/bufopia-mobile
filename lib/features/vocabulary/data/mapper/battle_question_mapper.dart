import 'package:bufopia/features/vocabulary/data/mapper/battle_option_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_question_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_question_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class BattleQuestionMapper
    extends BaseDataMapper<BattleQuestionModel, BattleQuestionEntity> {
  const BattleQuestionMapper(this._optionMapper);

  final BattleOptionMapper _optionMapper;

  @override
  BattleQuestionEntity mapToEntity(BattleQuestionModel? data) {
    return BattleQuestionEntity(
      id: data?.id ?? '',
      topic: data?.topic ?? '',
      en: data?.en ?? '',
      vi: data?.vi ?? '',
      options: _optionMapper.mapToListEntity(data?.options),
    );
  }
}
