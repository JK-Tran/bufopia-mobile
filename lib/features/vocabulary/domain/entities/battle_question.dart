import 'package:bufopia/features/vocabulary/domain/entities/battle_option.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_question.freezed.dart';

@freezed
abstract class BattleQuestion with _$BattleQuestion {
  const factory BattleQuestion({
    @Default('') String id,
    @Default('') String topic,
    @Default('') String en,
    @Default('') String vi,
    @Default([]) List<BattleOption> options,
  }) = _BattleQuestion;
}
