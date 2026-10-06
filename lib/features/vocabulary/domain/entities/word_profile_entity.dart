import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_profile_entity.freezed.dart';

@freezed
abstract class WordProfileEntity with _$WordProfileEntity {
  const factory WordProfileEntity({
    @Default('') String wordId,
    @Default(1) int familiarity,
    @Default(1) int interval,
    @Default(2.5) double easeFactor,
    int? nextReview,
    @Default(0) int lapses,
  }) = _WordProfileEntity;
}
