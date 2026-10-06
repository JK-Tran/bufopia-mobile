import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_record.freezed.dart';

@freezed
abstract class MatchRecord with _$MatchRecord {
  const factory MatchRecord({
    @Default('') String id,
    @Default('') String uid,
    @Default('') String topicId,
    @Default([]) List<int> scores,
    @Default('') String winner,
    @Default({}) Map<String, dynamic> matchData,
    DateTime? createdAt,
  }) = _MatchRecord;
}
