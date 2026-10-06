import 'package:bufopia/features/vocabulary/domain/entities/battle_question_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_deck_entity.freezed.dart';

@freezed
abstract class BattleDeckEntity with _$BattleDeckEntity {
  const factory BattleDeckEntity({
    @Default(true) bool success,
    @Default('') String topic,
    @Default(0) int count,
    @Default([]) List<BattleQuestionEntity> deck,
  }) = _BattleDeckEntity;
}
