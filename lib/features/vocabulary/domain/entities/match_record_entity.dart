import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_record_entity.freezed.dart';

@freezed
abstract class MatchRecordEntity with _$MatchRecordEntity {
  const factory MatchRecordEntity({
    @Default('') String id,
    @Default('') String uid,
    @Default('') String topicId,
    @Default([]) List<int> scores,
    @Default('') String winner,
    @Default({}) Map<String, dynamic> matchData,
    DateTime? createdAt,
  }) = _MatchRecordEntity;
}
