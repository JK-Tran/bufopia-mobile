import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_record_model.freezed.dart';
part 'match_record_model.g.dart';

@freezed
abstract class MatchRecordModel with _$MatchRecordModel {
  const factory MatchRecordModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'uid') required String uid,
    @JsonKey(name: 'topic_id') String? topicId,
    @JsonKey(name: 'scores') List<int>? scores,
    @JsonKey(name: 'winner') String? winner,
    @JsonKey(name: 'match_data') Map<String, dynamic>? matchData,
    @JsonKey(name: 'created_at') int? createdAt,
  }) = _MatchRecordModel;

  const MatchRecordModel._();

  factory MatchRecordModel.fromJson(Map<String, dynamic> json) =>
      _$MatchRecordModelFromJson(json);
}
