import 'package:bufopia/features/word_guess/data/models/history_item_data.dart';
import 'package:bufopia/features/word_guess/data/models/room_player_data.dart';
import 'package:bufopia/features/word_guess/data/models/round_result_data.dart';
import 'package:bufopia/features/word_guess/data/models/skip_proposal_data.dart';
import 'package:bufopia/features/word_guess/data/models/word_info_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_state_data.freezed.dart';
part 'game_state_data.g.dart';

@freezed
abstract class GameStateData with _$GameStateData {
  const factory GameStateData({
    @JsonKey(name: 'sessionId') String? sessionId,
    @JsonKey(name: 'protocolVersion') int? protocolVersion,
    @JsonKey(name: 'roomCode') String? roomCode,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'currentRound') int? currentRound,
    @JsonKey(name: 'totalRounds') int? totalRounds,
    @JsonKey(name: 'topicId') String? topicId,
    @JsonKey(name: 'durationSeconds') int? durationSeconds,
    @JsonKey(name: 'timeLeft') int? timeLeft,
    @JsonKey(name: 'serverNow') int? serverNow,
    @JsonKey(name: 'deadline') int? deadline,
    @JsonKey(name: 'wordInfo') WordInfoData? wordInfo,
    @JsonKey(name: 'lastResult') RoundResultData? lastResult,
    @JsonKey(name: 'proposal') SkipProposalData? proposal,
    @JsonKey(name: 'activeProposal') SkipProposalData? activeProposal,
    @JsonKey(name: 'players') List<RoomPlayerData>? players,
    @JsonKey(name: 'history') List<HistoryItemData>? history,
    @JsonKey(name: 'myUid') String? myUid,
    @JsonKey(name: 'winnerUid') String? winnerUid,
    @JsonKey(name: 'foundCount') int? foundCount,
    @JsonKey(name: 'result') Map<String, dynamic>? result,
    @JsonKey(name: 'wordsSummary') List<Map<String, dynamic>>? wordsSummary,
    @JsonKey(name: 'rewardResults') List<Map<String, dynamic>>? rewardResults,
    @JsonKey(name: 'currentWordIndex') int? currentWordIndex,
    @JsonKey(name: 'finishReason') String? finishReason,
  }) = _GameStateData;

  const GameStateData._();

  factory GameStateData.fromJson(Map<String, dynamic> json) =>
      _$GameStateDataFromJson(json);

  SkipProposalData? get effectiveProposal => proposal ?? activeProposal;
}
