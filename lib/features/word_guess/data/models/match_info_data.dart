import 'package:freezed_annotation/freezed_annotation.dart';

part 'match_info_data.freezed.dart';
part 'match_info_data.g.dart';

@freezed
abstract class MatchInfoData with _$MatchInfoData {
  const factory MatchInfoData({
    @JsonKey(name: 'matchId') String? matchId,
    @JsonKey(name: 'roomCode') String? roomCode,
    @JsonKey(name: 'playerIndex') int? playerIndex,
    @JsonKey(name: 'rivalName') String? rivalName,
    @JsonKey(name: 'rivalAvatar') String? rivalAvatar,
    @JsonKey(name: 'topicId') String? topicId,
    @JsonKey(name: 'game') String? game,
  }) = _MatchInfoData;

  const MatchInfoData._();

  factory MatchInfoData.fromJson(Map<String, dynamic> json) =>
      _$MatchInfoDataFromJson(json);
}
