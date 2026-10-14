import 'package:bufopia/features/word_chain/data/models/game_state_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_record_data.freezed.dart';
part 'match_record_data.g.dart';

@freezed
abstract class MatchRecordData with _$MatchRecordData {
  const factory MatchRecordData({
    @JsonKey(name: 'roomCode') String? roomCode,
    @JsonKey(name: 'playerIndex') int? playerIndex,
    @JsonKey(name: 'rivalName') String? rivalName,
    @JsonKey(name: 'rivalAvatar') String? rivalAvatar,
    @JsonKey(name: 'relaxed') bool? relaxed,
    @JsonKey(name: 'state') GameStateData? state,
  }) = _MatchRecordData;

  const MatchRecordData._();

  factory MatchRecordData.fromJson(Map<String, dynamic> json) =>
      _$MatchRecordDataFromJson(json);
}
