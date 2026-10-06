import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_profile.freezed.dart';

@freezed
abstract class WordProfile with _$WordProfile {
  const factory WordProfile({
    @Default('') String wordId,
    @Default(0) int seen,
    int? last,
    @Default('Learning') String status,
    String? gameMode,
    @Default(1) int familiarity,
    @Default(1) int interval,
    @Default(2.5) double easeFactor,
    int? nextReview,
    @Default(0) int lapses,
  }) = _WordProfile;
}
