import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_result.freezed.dart';

@freezed
abstract class PracticeResult with _$PracticeResult {
  const factory PracticeResult({
    @Default(false) bool success,
    @Default(false) bool correct,
    @Default('') String receiptId,
    @Default(0) int gainedXp,
    @Default(0) int awardedXp,
    @Default(false) bool leveledUp,
    User? user,
  }) = _PracticeResult;
}
