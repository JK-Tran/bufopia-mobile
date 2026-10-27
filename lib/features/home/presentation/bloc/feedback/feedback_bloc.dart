import 'dart:async';

import 'package:bufopia/core/base/base_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/feedback/feedback.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word_profile.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/get_vocabulary_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/get_word_profiles_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/send_feedback_use_case.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'feedback_bloc.freezed.dart';
part 'feedback_event.dart';
part 'feedback_state.dart';

@injectable
class FeedbackBloc extends BaseBloc<FeedbackEvent, FeedbackState> {
  FeedbackBloc(
    this._getVocabularyUseCase,
    this._getWordProfilesUseCase,
    this._sendFeedbackUseCase,
    this._deviceUidService,
    this._firebaseAuthService,
    this._audioService,
  ) : super(const FeedbackState()) {
    // Initialization & Tab Selection
    on<_Initiated>(_onInitiated);
    on<_TabChanged>(_onTabChanged);
    on<_WordEntrySelected>(_onWordEntrySelected);
    on<_ToggleFullDictionaryMode>(_onToggleFullDictionaryMode);

    // Feedback Submission
    on<_SubmitGeneralFeedback>(_onSubmitGeneralFeedback);
    on<_SubmitWordReport>(_onSubmitWordReport);
    on<_ResetForm>(_onResetForm);
  }

  final GetVocabularyUseCase _getVocabularyUseCase;
  final GetWordProfilesUseCase _getWordProfilesUseCase;
  final SendFeedbackUseCase _sendFeedbackUseCase;
  final DeviceUidService _deviceUidService;
  final FirebaseAuthService _firebaseAuthService;
  final AppAudioService _audioService;

  // ─── Initialization & UI Handlers ───────────────────────────────

  FutureOr<void> _onInitiated(
    _Initiated event,
    Emitter<FeedbackState> emit,
  ) {
    return runBlocCatching(
      handleLoading: false,
      handleError: false,
      action: () async {
        final uid = await _resolveUid();

        var allWords = <Word>[];
        var profiles = <WordProfile>[];

        try {
          final vocabOutput = await _getVocabularyUseCase.execute(
            const GetVocabularyInput(),
          );
          allWords = vocabOutput.vocabulary.words;
        } on Object catch (_) {}

        try {
          final profilesOutput = await _getWordProfilesUseCase.execute(
            GetWordProfilesInput(uid: uid),
          );
          profiles = profilesOutput.profiles;
        } on Object catch (_) {}

        final wordMap = {for (final w in allWords) w.id: w};
        final historyList = profiles
            .map((p) {
              final w = wordMap[p.wordId];
              if (w == null) return null;
              return FeedbackWordEntry(
                word: w,
                gameMode: p.gameMode ?? 'Đấu từ',
              );
            })
            .whereType<FeedbackWordEntry>()
            .toList();

        final allEntries = allWords
            .map((w) => FeedbackWordEntry(word: w))
            .toList();

        safeEmit(
          state.copyWith(
            historyWords: historyList,
            allWords: allEntries,
            isLoading: false,
          ),
        );
      },
      doOnError: (e) async {
        safeEmit(state.copyWith(isLoading: false));
      },
    );
  }

  void _onTabChanged(
    _TabChanged event,
    Emitter<FeedbackState> emit,
  ) {
    safeEmit(
      state.copyWith(
        activeTab: event.tab,
        selectedWordEntry: null,
      ),
    );
  }

  void _onWordEntrySelected(
    _WordEntrySelected event,
    Emitter<FeedbackState> emit,
  ) {
    safeEmit(state.copyWith(selectedWordEntry: event.entry));
  }

  void _onToggleFullDictionaryMode(
    _ToggleFullDictionaryMode event,
    Emitter<FeedbackState> emit,
  ) {
    safeEmit(state.copyWith(isFullDictionaryMode: true));
  }

  void _onResetForm(
    _ResetForm event,
    Emitter<FeedbackState> emit,
  ) {
    safeEmit(
      state.copyWith(
        isSubmittedSuccess: false,
        submittedReportedWord: null,
        selectedWordEntry: null,
        errorMessage: null,
      ),
    );
  }

  // ─── Feedback Submission Handlers ────────────────────────────────

  FutureOr<void> _onSubmitGeneralFeedback(
    _SubmitGeneralFeedback event,
    Emitter<FeedbackState> emit,
  ) {
    return _executeFeedbackSubmission(
      category: event.category,
      message: event.message,
      contact: event.contact,
      page: '/feedback',
    );
  }

  FutureOr<void> _onSubmitWordReport(
    _SubmitWordReport event,
    Emitter<FeedbackState> emit,
  ) {
    final entry = state.selectedWordEntry;
    if (entry == null) return null;

    final word = entry.word;
    final formattedMessage =
        '[Báo lỗi từ vựng: ${word.en} | Nghĩa hiện tại: ${word.vi} | '
        'Chế độ: ${entry.gameMode} | ID: ${word.id} | Topic: ${word.topic}]\n'
        'Loại góp ý: ${event.issueType}\n'
        'Nội dung đề xuất: ${event.content}';

    return _executeFeedbackSubmission(
      category: 'content',
      message: formattedMessage,
      contact: event.contact,
      page: '/vocab/${Uri.encodeComponent(word.en)}',
      reportedWord: word.en,
    );
  }

  // ─── Private Helpers ─────────────────────────────────────────────

  FutureOr<void> _executeFeedbackSubmission({
    required String category,
    required String message,
    required String page,
    String? contact,
    String? reportedWord,
  }) {
    if (state.isSubmitting) return null;

    return runBlocCatching(
      handleLoading: false,
      handleError: false,
      doOnSubscribe: () => safeEmit(
        state.copyWith(isSubmitting: true, errorMessage: null),
      ),
      action: () async {
        final uid = await _resolveUid();
        final userName = _resolveUserName();

        await _sendFeedbackUseCase.execute(
          SendFeedbackInput(
            uid: uid,
            userName: userName,
            category: category,
            message: message,
            contact: contact,
            page: page,
          ),
        );
        _audioService.playClickSfx();
        safeEmit(
          state.copyWith(
            isSubmitting: false,
            isSubmittedSuccess: true,
            submittedReportedWord: reportedWord,
          ),
        );
      },
      doOnError: (e) async {
        safeEmit(
          state.copyWith(
            isSubmitting: false,
            errorMessage: 'Lỗi kết nối máy chủ, vui lòng thử lại sau',
          ),
        );
      },
    );
  }

  Future<String> _resolveUid() async {
    final fbUid = _firebaseAuthService.currentUser?.uid;
    if (fbUid != null && fbUid.trim().isNotEmpty) return fbUid;
    return _deviceUidService.getDeviceUid();
  }

  String _resolveUserName() {
    final name = _firebaseAuthService.currentUser?.displayName;
    if (name != null && name.trim().isNotEmpty) return name;
    return 'Người Chơi Bufopia';
  }
}
