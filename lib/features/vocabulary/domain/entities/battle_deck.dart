import 'package:bufopia/features/vocabulary/domain/entities/battle_question.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'battle_deck.freezed.dart';

@freezed
abstract class BattleDeck with _$BattleDeck {
  const factory BattleDeck({
    @Default(true) bool success,
    @Default('') String topic,
    @Default(0) int count,
    @Default([]) List<BattleQuestion> deck,
  }) = _BattleDeck;
}
