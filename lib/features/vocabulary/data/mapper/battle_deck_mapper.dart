import 'package:bufopia/features/vocabulary/data/mapper/battle_question_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_deck_response_model.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_deck_entity.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class BattleDeckMapper
    extends BaseDataMapper<BattleDeckResponseModel, BattleDeckEntity> {
  const BattleDeckMapper(this._questionMapper);

  final BattleQuestionMapper _questionMapper;

  @override
  BattleDeckEntity mapToEntity(BattleDeckResponseModel? data) {
    return BattleDeckEntity(
      success: data?.success ?? true,
      topic: data?.topic ?? '',
      count: data?.count ?? 0,
      deck: _questionMapper.mapToListEntity(data?.deck),
    );
  }
}
