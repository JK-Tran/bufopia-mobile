import 'dart:async';

import 'package:bufopia/features/word_guess/data/datasources/word_guess_data_source.dart';
import 'package:bufopia/features/word_guess/data/mapper/deck_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/mapper/game_state_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/mapper/history_item_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/mapper/match_info_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/mapper/practice_result_data_mapper.dart';
import 'package:bufopia/features/word_guess/data/models/game_state_data.dart';
import 'package:bufopia/features/word_guess/data/models/history_item_data.dart';
import 'package:bufopia/features/word_guess/data/models/match_info_data.dart';
import 'package:bufopia/features/word_guess/data/models/practice_result_data.dart';
import 'package:bufopia/features/word_guess/domain/entities/deck.dart';
import 'package:bufopia/features/word_guess/domain/entities/game_event.dart';
import 'package:bufopia/features/word_guess/domain/entities/practice_result.dart';
import 'package:bufopia/features/word_guess/domain/repositories/word_guess_repository.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/word_guess_socket_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WordGuessRepository)
class WordGuessRepositoryImpl implements WordGuessRepository {
  WordGuessRepositoryImpl(
    this._dataSource,
    this._deckMapper,
    this._practiceResultMapper,
    this._gameStateMapper,
    this._historyItemMapper,
    this._matchInfoMapper,
    this._socketService,
  );

  final WordGuessDataSource _dataSource;
  final DeckDataMapper _deckMapper;
  final PracticeResultDataMapper _practiceResultMapper;
  final GameStateDataMapper _gameStateMapper;
  final HistoryItemDataMapper _historyItemMapper;
  final MatchInfoDataMapper _matchInfoMapper;
  final WordGuessSocketService _socketService;

  @override
  Future<Deck> getDeck({
    required String topic,
    String? uid,
    int count = 20,
    String? recent,
    String? difficulty,
  }) async {
    final response = await _dataSource.getDeck(
      topic: topic,
      uid: uid,
      count: count,
      recent: recent,
      difficulty: difficulty,
    );
    return _deckMapper.mapToEntity(response);
  }

  @override
  Future<PracticeResult> verifyPracticeWord({
    required String uid,
    required String sessionId,
    required int index,
    required String answer,
  }) async {
    final response = await _dataSource.verifyPracticeWord(
      uid: uid,
      sessionId: sessionId,
      index: index,
      answer: answer,
    );
    return _practiceResultMapper.mapToEntity(response);
  }

  @override
  Future<Map<String, dynamic>?> lookupDictionary(
    String word, {
    int details = 1,
    String lang = 'en',
  }) {
    return _dataSource.lookupDictionary(
      word,
      details: details,
      lang: lang,
    );
  }

  @override
  Future<Map<String, dynamic>?> lookupRoom({
    required String roomCode,
    required String uid,
    String? token,
  }) {
    return _dataSource.lookupRoom(
      roomCode: roomCode,
      uid: uid,
      token: token,
    );
  }

  @override
  Future<bool> saveMatch({
    required Map<String, dynamic> matchPayload,
    String? token,
  }) {
    return _dataSource.saveMatch(
      matchPayload: matchPayload,
      token: token,
    );
  }

  @override
  Future<bool> saveToVault({
    required String uid,
    required String title,
    required List<Map<String, dynamic>> words,
    String? description,
    String? token,
  }) {
    return _dataSource.saveToVault(
      uid: uid,
      title: title,
      words: words,
      description: description,
      token: token,
    );
  }

  @override
  Future<void> connectMatchmake({
    required String uid,
    required String name,
    required String topic,
    String? token,
    String? avatar,
    String? difficulty,
  }) {
    return _socketService.connectMatchmake(
      uid: uid,
      name: name,
      topic: topic,
      token: token,
      avatar: avatar,
      difficulty: difficulty,
    );
  }

  @override
  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? token,
    String? avatar,
    String? topic,
    String? difficulty,
    bool isMatchmaking = false,
  }) {
    return _socketService.connectRoom(
      roomCode: roomCode,
      uid: uid,
      name: name,
      token: token,
      avatar: avatar,
      topic: topic,
      difficulty: difficulty,
      isMatchmaking: isMatchmaking,
    );
  }

  @override
  void sendGuess({
    required String word,
    required String sessionId,
    required int roundIndex,
  }) {
    _socketService.sendGuess(
      word: word,
      sessionId: sessionId,
      roundIndex: roundIndex,
    );
  }

  @override
  void sendSkip({
    required String sessionId,
    required int roundIndex,
  }) {
    _socketService.sendSkip(
      sessionId: sessionId,
      roundIndex: roundIndex,
    );
  }

  @override
  void sendVote({
    required String proposalId,
    required bool agree,
    required String sessionId,
    required int roundIndex,
  }) {
    _socketService.sendVote(
      proposalId: proposalId,
      agree: agree,
      sessionId: sessionId,
      roundIndex: roundIndex,
    );
  }

  @override
  void sendToggleReady() {
    _socketService.sendToggleReady();
  }

  @override
  void sendStartGame() {
    _socketService.sendStartGame();
  }

  @override
  void sendUpdateConfig({String? topicId, int? durationSeconds}) {
    _socketService.sendUpdateConfig(
      topicId: topicId,
      durationSeconds: durationSeconds,
    );
  }

  @override
  void sendEnd({required String sessionId}) {
    _socketService.sendEnd(sessionId: sessionId);
  }

  @override
  void sendChat(String text) {
    _socketService.sendChat(text);
  }

  @override
  void sendRestart({required String sessionId}) {
    _socketService.sendRestart(sessionId: sessionId);
  }

  @override
  void sendLeave() {
    _socketService.sendLeave();
  }

  @override
  void sendCancelMatchmake() {
    _socketService.sendCancel();
  }

  @override
  Future<void> disconnect() {
    return _socketService.disconnect();
  }

  @override
  Stream<GameEvent> get gameEventStream {
    return _socketService.eventStream
        .map(_mapSocketEventToGameEvent)
        .where((event) => event != null)
        .cast<GameEvent>();
  }

  GameEvent? _mapSocketEventToGameEvent(SocketEvent event) {
    if (event is GuessRoomConnectedEvent) {
      final stateData = GameStateData.fromJson(event.rawState);
      return GameEvent.connected(
        myUid: event.myUid,
        state: _gameStateMapper.mapToEntity(stateData),
      );
    }
    if (event is GuessRoomStateEvent) {
      final stateData = GameStateData.fromJson(event.rawState);
      return GameEvent.stateUpdated(_gameStateMapper.mapToEntity(stateData));
    }
    if (event is GuessWordHintEvent) {
      return GameEvent.wordHint(
        sessionId: event.sessionId,
        index: event.index,
        masked: event.masked,
      );
    }
    if (event is GuessWordPhoneticEvent) {
      return GameEvent.wordPhonetic(
        sessionId: event.sessionId,
        index: event.index,
        phonetic: event.phonetic,
        phoneticSource: event.phoneticSource,
        phoneticEstimated: event.phoneticEstimated,
      );
    }
    if (event is GuessWordSolvedEvent) {
      return GameEvent.wordSolved(
        sessionId: event.sessionId,
        index: event.index,
        word: event.word,
        meaning: event.meaning,
        historyItem: event.historyItem != null
            ? _historyItemMapper.mapToEntity(
                HistoryItemData.fromJson(event.historyItem!),
              )
            : null,
      );
    }
    if (event is GuessAttemptEvent) {
      return GameEvent.guessAttempt(
        word: event.word,
        isCorrect: event.isCorrect,
        message: event.message,
      );
    }
    if (event is GuessSessionRewardEvent) {
      final rewardData = PracticeResultData.fromJson(event.rawReward);
      return GameEvent.sessionReward(
        sessionId: event.sessionId,
        reward: _practiceResultMapper.mapToEntity(rewardData),
      );
    }
    if (event is ChainChatMessageEvent) {
      return GameEvent.chat(
        senderUid: event.actor.toString(),
        text: event.text,
        senderName: event.name,
        avatar: event.avatar,
      );
    }
    if (event is GuessChatBlockedEvent) {
      return GameEvent.chatBlocked(reason: event.reason);
    }
    if (event is GuessProposalClosedEvent) {
      return GameEvent.proposalClosed(reason: event.reason);
    }
    if (event is MatchmakeQueuedEvent) {
      return GameEvent.queued(topicId: event.topicId);
    }
    if (event is MatchmakeMatchedEvent) {
      return GameEvent.matched(
        _matchInfoMapper.mapToEntity(
          MatchInfoData(
            matchId: event.matchId,
            roomCode: event.roomCode,
            playerIndex: event.playerIndex,
            rivalName: event.rivalName,
            rivalAvatar: event.rivalAvatar,
            topicId: event.topicId,
            game: 'guess',
          ),
        ),
      );
    }
    if (event is RoomPlayerLeftEvent) {
      return GameEvent.playerLeft(
        uid: event.uid ?? '',
        name: event.name ?? 'Đối thủ',
      );
    }
    if (event is SocketConnectionChangedEvent) {
      return GameEvent.connection(event.state);
    }
    if (event is SocketErrorEvent) {
      return GameEvent.error(event.message);
    }
    return null;
  }
}
