import 'package:bufopia/features/word_guess/data/mapper/history_item_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/mapper/room_player_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/mapper/round_result_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/mapper/skip_proposal_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/mapper/word_info_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/models/game_state_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/game_state.dart';
import 'package:bufopia/shared/infrastructure/data/base/base_data_mapper.dart';
import 'package:injectable/injectable.dart';

@injectable
class GameStateDataMapper extends BaseDataMapper<GameStateData, GameState> {
  const GameStateDataMapper(
    this._wordInfoMapper,
    this._roundResultMapper,
    this._skipProposalMapper,
    this._roomPlayerMapper,
    this._historyItemMapper,
  );

  final WordInfoDataMapper _wordInfoMapper;
  final RoundResultDataMapper _roundResultMapper;
  final SkipProposalDataMapper _skipProposalMapper;
  final RoomPlayerDataMapper _roomPlayerMapper;
  final HistoryItemDataMapper _historyItemMapper;

  @override
  GameState mapToEntity(GameStateData? data) {
    var calculatedTimeLeft = data?.timeLeft ?? 0;
    if (data?.deadline != null &&
        data?.serverNow != null &&
        data!.deadline! > data.serverNow!) {
      calculatedTimeLeft = ((data.deadline! - data.serverNow!) / 1000).round();
    }

    return GameState(
      sessionId: data?.sessionId ?? '',
      roomCode: data?.roomCode ?? '',
      status: data?.status ?? 'lobby',
      currentRound: data?.currentWordIndex != null
          ? data!.currentWordIndex! + 1
          : (data?.currentRound != null && data!.currentRound! > 0
              ? data.currentRound!
              : 1),
      totalRounds: data?.totalRounds ?? 10,
      topicId: data?.topicId ?? '',
      durationSeconds: data?.durationSeconds ?? 300,
      timeLeft: calculatedTimeLeft,
      serverNow: data?.serverNow ?? 0,
      deadline: data?.deadline ?? 0,
      protocolVersion: data?.protocolVersion ?? 4,
      wordInfo: data?.wordInfo != null
          ? _wordInfoMapper.mapToEntity(data?.wordInfo)
          : null,
      lastResult: data?.lastResult != null
          ? _roundResultMapper.mapToEntity(data?.lastResult)
          : null,
      activeProposal: data?.effectiveProposal != null
          ? _skipProposalMapper.mapToEntity(data?.effectiveProposal)
          : null,
      players: data?.players != null
          ? _roomPlayerMapper.mapToListEntity(data?.players)
          : const [],
      history: data?.history != null
          ? _historyItemMapper.mapToListEntity(data?.history)
          : const [],
      myUid: data?.myUid ?? '',
      winnerUid: data?.winnerUid,
      foundCount: data?.foundCount ?? 0,
      result: data?.result,
      wordsSummary: data?.wordsSummary ?? const [],
      rewardResults: data?.rewardResults ?? const [],
      currentWordIndex: data?.currentWordIndex,
      finishReason: data?.finishReason,
    );
  }
}
