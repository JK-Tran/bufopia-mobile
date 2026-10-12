import 'dart:async';

import 'package:bufopia/features/word_chain/data/datasources/word_chain_data_source.dart';
import 'package:bufopia/features/word_chain/data/mapper/reward_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/mapper/session_data_mapper.dart';
import 'package:bufopia/features/word_chain/data/mapper/word_data_mapper.dart';
import 'package:bufopia/features/word_chain/domain/entities/chain_game_event.dart';
import 'package:bufopia/features/word_chain/domain/entities/chain_state_update.dart';
import 'package:bufopia/features/word_chain/domain/entities/reward.dart';
import 'package:bufopia/features/word_chain/domain/entities/session.dart';
import 'package:bufopia/features/word_chain/domain/entities/word.dart';
import 'package:bufopia/features/word_chain/domain/repositories/word_chain_repository.dart';
import 'package:bufopia/shared/exception/remote/remote_exception.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/word_chain_socket_service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: WordChainRepository)
class WordChainRepositoryImpl implements WordChainRepository {
  WordChainRepositoryImpl(
    this._dataSource,
    this._wordMapper,
    this._sessionMapper,
    this._rewardMapper,
    this._socketService,
  );

  final WordChainDataSource _dataSource;
  final WordDataMapper _wordMapper;
  final SessionDataMapper _sessionMapper;
  final RewardDataMapper _rewardMapper;
  final WordChainSocketService _socketService;

  @override
  Future<Word> lookupWord(
    String word, {
    String lexicon = 'chain-v3',
    int details = 1,
    String lang = 'en',
  }) async {
    try {
      final response = await _dataSource.lookupWord(
        word,
        lexicon: lexicon,
        details: details,
        lang: lang,
      );
      return _wordMapper.mapToEntity(response);
    } on RemoteException catch (e) {
      if (e.httpErrorCode == 404) {
        return Word(word: word);
      }
      rethrow;
    }
  }

  @override
  Future<Word> getBotSuggestion({
    required String letter,
    List<String>? exclude,
    String lang = 'en',
  }) async {
    try {
      final response = await _dataSource.getBotSuggestion(
        letter: letter,
        exclude: exclude,
        lang: lang,
      );
      return _wordMapper.mapToEntity(response);
    } on RemoteException catch (e) {
      if (e.httpErrorCode == 404) {
        return const Word();
      }
      rethrow;
    }
  }

  @override
  Future<Session> startPractice({
    required String uid,
    String language = 'en',
  }) async {
    final response = await _dataSource.startPracticeSession(
      uid: uid,
      language: language,
    );
    return _sessionMapper.mapToEntity(response);
  }

  @override
  Future<Reward> verifyPracticeWord({
    required String uid,
    required String sessionId,
    required int index,
    required String answer,
    String? bridgeWord,
  }) async {
    final response = await _dataSource.verifyPracticeWord(
      uid: uid,
      sessionId: sessionId,
      index: index,
      answer: answer,
      bridgeWord: bridgeWord,
    );
    return _rewardMapper.mapToEntity(response);
  }

  @override
  Future<void> connectMatchmake({
    required String uid,
    required String name,
    String? token,
    String? avatar,
    bool relaxed = false,
    String lang = 'en',
  }) {
    return _socketService.connectMatchmake(
      uid: uid,
      name: name,
      token: token,
      avatar: avatar,
      relaxed: relaxed,
      lang: lang,
    );
  }

  @override
  Future<void> connectRoom({
    required String roomCode,
    required String uid,
    required String name,
    String? token,
    String? avatar,
    bool relaxed = false,
    String lang = 'en',
  }) {
    return _socketService.connectRoom(
      roomCode: roomCode,
      uid: uid,
      name: name,
      token: token,
      avatar: avatar,
      relaxed: relaxed,
      lang: lang,
    );
  }

  @override
  void sendWord({required String word, required int turnId}) {
    _socketService.sendWord(word: word, turnId: turnId);
  }

  @override
  void sendChat(String text) {
    _socketService.sendChat(text);
  }

  @override
  void sendAway({required String sessionId, required String awayId}) {
    _socketService.sendAway(sessionId: sessionId, awayId: awayId);
  }

  @override
  void sendSurrender() {
    _socketService.sendSurrender();
  }

  @override
  void sendRematch({required String sessionId}) {
    _socketService.sendRematch(sessionId: sessionId);
  }

  @override
  Future<void> disconnect() {
    return _socketService.disconnect();
  }

  @override
  Stream<ChainGameEvent> get gameEventStream {
    return _socketService.eventStream.transform(
      StreamTransformer<SocketEvent, ChainGameEvent>.fromHandlers(
        handleData: (event, sink) {
          if (event is ChainStateEvent) {
            sink.add(
              ChainGameEvent.state(
                ChainStateUpdate(
                  playerIndex: event.playerIndex,
                  roomCode: event.roomCode,
                  state: event.state,
                  rivalName: event.rivalName,
                  rivalAvatar: event.rivalAvatar,
                  serverNow: event.serverNow,
                  sessionId: event.sessionId,
                ),
              ),
            );
          } else if (event is ChainWordCheckingEvent) {
            sink.add(const ChainGameEvent.wordChecking(isChecking: true));
          } else if (event is ChainWordCheckedEvent) {
            sink.add(const ChainGameEvent.wordChecking(isChecking: false));
          } else if (event is ChainWordRejectedEvent) {
            sink.add(ChainGameEvent.wordRejected(penalty: event.penalty));
          } else if (event is ChainSessionRewardEvent) {
            sink.add(
              ChainGameEvent.reward(
                reward: event.reward,
                sessionId: event.sessionId,
              ),
            );
          } else if (event is RoomRematchWaitingEvent) {
            sink.add(
              ChainGameEvent.rematchWaiting(
                readyPlayers: event.readyPlayers,
              ),
            );
          } else if (event is RoomPlayerLeftEvent) {
            sink.add(ChainGameEvent.opponentLeft(event.message));
          } else if (event is SocketConnectionChangedEvent) {
            sink.add(ChainGameEvent.connection(event.state));
          } else if (event is SocketErrorEvent) {
            sink.add(ChainGameEvent.error(event.message));
          }
        },
      ),
    );
  }
}
