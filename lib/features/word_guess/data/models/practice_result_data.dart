import 'package:bufopia/features/auth/data/models/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'practice_result_data.freezed.dart';
part 'practice_result_data.g.dart';

@freezed
abstract class PracticeResultData with _$PracticeResultData {
  const factory PracticeResultData({
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'correct') bool? correct,
    @JsonKey(name: 'receiptId') String? receiptId,
    @JsonKey(name: 'gainedXp') int? gainedXp,
    @JsonKey(name: 'awardedXp') int? awardedXp,
    @JsonKey(name: 'leveledUp') bool? leveledUp,
    @JsonKey(name: 'user') UserData? user,
    @JsonKey(name: 'error') bool? error,
    @JsonKey(name: 'message') String? message,
    @JsonKey(name: 'retryAfterMs') int? retryAfterMs,
  }) = _PracticeResultData;

  const PracticeResultData._();

  factory PracticeResultData.fromJson(Map<String, dynamic> json) =>
      _$PracticeResultDataFromJson(json);
}
