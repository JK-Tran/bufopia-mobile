import 'dart:async';
import 'dart:io';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/practice/domain/entities/pronunciation_assessment.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/domain/services/srs_engine.dart';
import 'package:bufopia/features/practice/domain/usecases/get_weak_words_use_case.dart';
import 'package:bufopia/features/practice/domain/usecases/submit_practice_profile_use_case.dart';
import 'package:bufopia/features/practice/domain/usecases/submit_pronunciation_assessment_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/get_vocabulary_use_case.dart';
import 'package:bufopia/features/word_guess/domain/usecases/submit_guess_vault_use_case.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'review_bloc.freezed.dart';
part 'review_event.dart';
part 'review_state.dart';

@injectable
class ReviewBloc extends BaseBloc<ReviewEvent, ReviewState> {
  ReviewBloc(
    this._getWeakWordsUseCase,
    this._getVocabularyUseCase,
    this._submitPracticeProfileUseCase,
    this._submitPronunciationAssessmentUseCase,
    this._submitGuessVaultUseCase,
    this._deviceUidService,
    this._firebaseAuthService,
  ) : super(const ReviewState()) {
    on<_Init>(_onInit);
    on<_AnswerWord>(_onAnswerWord);
    on<_AssessPronunciation>(_onAssessPronunciation);
    on<_SaveWordToVault>(_onSaveWordToVault);
    on<_NextWord>(_onNextWord);
  }

  final GetWeakWordsUseCase _getWeakWordsUseCase;
  final GetVocabularyUseCase _getVocabularyUseCase;
  final SubmitPracticeProfileUseCase _submitPracticeProfileUseCase;
  final SubmitPronunciationAssessmentUseCase
  _submitPronunciationAssessmentUseCase;
  final SubmitGuessVaultUseCase _submitGuessVaultUseCase;
  final DeviceUidService _deviceUidService;
  final FirebaseAuthService _firebaseAuthService;

  FutureOr<void> _onInit(
    _Init event,
    Emitter<ReviewState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      handleError: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isLoading: true)),
      action: () async {
        final resolvedUid = (event.uid != null && event.uid!.isNotEmpty)
            ? event.uid!
            : (_firebaseAuthService.currentUser?.uid ??
                  await _deviceUidService.getDeviceUid());
        final resolvedToken =
            event.token ?? await _firebaseAuthService.getIdToken();

        var vocabMap = <String, Word>{};
        GetWeakWordsOutput? output;

        await Future.wait([
          (() async {
            try {
              final vocabOutput = await _getVocabularyUseCase.execute(
                const GetVocabularyInput(),
              );
              final map = <String, Word>{};
              for (final w in vocabOutput.vocabulary.words) {
                map[w.id] = w;
                map[w.en.toLowerCase()] = w;
                if (w.id.startsWith('vocab_')) {
                  map[w.id.substring(6)] = w;
                } else {
                  map['vocab_${w.id}'] = w;
                }
              }
              vocabMap = map;
            } on Object catch (_) {}
          })(),
          (() async {
            output = await _getWeakWordsUseCase.execute(
              GetWeakWordsInput(
                uid: resolvedUid,
                token: resolvedToken,
              ),
            );
          })(),
        ]);
        safeEmit(
          state.copyWith(
            weakWords: output?.weakWords ?? const [],
            vocabMap: vocabMap,
            uid: resolvedUid,
            token: resolvedToken,
            currentWordIndex: 0,
          ),
        );
      },
      doOnSuccessOrError: () => safeEmit(state.copyWith(isLoading: false)),
    );
  }

  FutureOr<void> _onAnswerWord(
    _AnswerWord event,
    Emitter<ReviewState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isActionLoading: true)),
      action: () async {
        final previousMemory = state.weakWords.firstWhereOrNull(
          (w) => w.wordId == event.wordId,
        );

        final updatedMemory = SrsEngine.updateMemory(
          wordId: event.wordId,
          previous: previousMemory,
          correct: event.correct,
          seconds: event.seconds,
        );

        await _submitPracticeProfileUseCase.execute(
          SubmitPracticeProfileInput(
            uid: event.uid,
            memory: updatedMemory,
            token: event.token,
          ),
        );

        final updatedList = state.weakWords
            .map((item) => item.wordId == event.wordId ? updatedMemory : item)
            .where((item) => item.status == 'Weak')
            .toList();

        safeEmit(state.copyWith(weakWords: updatedList));
      },
      doOnSuccessOrError: () =>
          safeEmit(state.copyWith(isActionLoading: false)),
    );
  }

  FutureOr<void> _onAssessPronunciation(
    _AssessPronunciation event,
    Emitter<ReviewState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () =>
          safeEmit(state.copyWith(isAssessingPronunciation: true)),
      action: () async {
        final output = await _submitPronunciationAssessmentUseCase.execute(
          SubmitPronunciationAssessmentInput(
            uid: event.uid,
            audioFile: event.audioFile,
            referenceText: event.referenceText,
            language: event.language,
            token: event.token,
          ),
        );
        safeEmit(
          state.copyWith(
            pronunciationAssessment: output.assessment,
          ),
        );
      },
      doOnSuccessOrError: () =>
          safeEmit(state.copyWith(isAssessingPronunciation: false)),
    );
  }

  FutureOr<void> _onSaveWordToVault(
    _SaveWordToVault event,
    Emitter<ReviewState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      doOnSubscribe: () => safeEmit(state.copyWith(isSavingVault: true)),
      action: () async {
        final word = event.word;
        await _submitGuessVaultUseCase.execute(
          SubmitGuessVaultInput(
            uid: event.uid,
            title: 'Từ ôn tập từ yếu',
            token: event.token,
            words: [
              {
                'wordEn': word.en,
                'wordVi': word.vi,
                'phonetic': word.phonetic,
                'exampleEn': word.example,
                'exampleVi': word.exampleVi,
              },
            ],
          ),
        );
      },
      doOnSuccessOrError: () => safeEmit(state.copyWith(isSavingVault: false)),
    );
  }

  void _onNextWord(
    _NextWord event,
    Emitter<ReviewState> emit,
  ) {
    if (state.currentWordIndex < state.weakWords.length - 1) {
      safeEmit(
        state.copyWith(
          currentWordIndex: state.currentWordIndex + 1,
          pronunciationAssessment: null,
        ),
      );
    }
  }
}
