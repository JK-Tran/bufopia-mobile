import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_record_data.freezed.dart';
part 'match_record_data.g.dart';

@freezed
abstract class MatchRecordData with _$MatchRecordData {
  const factory MatchRecordData({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'topic_id') String? topicId,
    @JsonKey(name: 'scores') List<int>? scores,
    @JsonKey(name: 'winner') String? winner,
    @JsonKey(name: 'match_data') Map<String, dynamic>? matchData,
    @JsonKey(name: 'created_at') int? createdAt,
  }) = _MatchRecordData;

  const MatchRecordData._();

  factory MatchRecordData.fromJson(Map<String, dynamic> json) =>
      _$MatchRecordDataFromJson(json);
}
