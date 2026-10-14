import 'package:bufopia/features/vocabulary/data/mapper/battle_question_data_mapper.dart';
import 'package:bufopia/features/vocabulary/data/models/battle_deck_data.dart';
import 'package:bufopia/features/vocabulary/domain/entities/battle_deck.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class BattleDeckDataMapper
    extends BaseDataMapper<BattleDeckDataResponse, BattleDeck> {
  const BattleDeckDataMapper(this._questionMapper);

  final BattleQuestionDataMapper _questionMapper;

  @override
  BattleDeck mapToEntity(BattleDeckDataResponse? data) {
    return BattleDeck(
      success: data?.success ?? true,
      topic: data?.topic ?? '',
      count: data?.count ?? 0,
      deck: _questionMapper.mapToListEntity(data?.deck),
    );
  }
}
