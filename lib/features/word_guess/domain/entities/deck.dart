import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck.freezed.dart';

@freezed
abstract class Deck with _$Deck {
  const factory Deck({
    @Default(true) bool success,
    @Default('') String practiceSessionId,
    @Default('') String topic,
    @Default(0) int count,
    @Default([]) List<Word> words,
  }) = _Deck;
}
