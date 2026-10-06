import 'package:bufopia/features/vocabulary/domain/entities/battle_option_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_question_entity.freezed.dart';

@freezed
abstract class BattleQuestionEntity with _$BattleQuestionEntity {
  const factory BattleQuestionEntity({
    @Default('') String id,
    @Default('') String topic,
    @Default('') String en,
    @Default('') String vi,
    @Default([]) List<BattleOptionEntity> options,
  }) = _BattleQuestionEntity;
}
