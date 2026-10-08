import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/feedback/feedback.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/get_vocabulary_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/get_word_profiles_use_case.dart';
import 'package:bufopia/features/vocabulary/domain/usecases/send_feedback_use_case.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:bufopia/shared/services/device/device_uid_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeFeedbackDialog extends StatefulWidget {
  const HomeFeedbackDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (context) => const HomeFeedbackDialog(),
    );
  }

  @override
  State<HomeFeedbackDialog> createState() => _HomeFeedbackDialogState();
}

class _HomeFeedbackDialogState extends State<HomeFeedbackDialog> {
  FeedbackActiveTab _activeTab = FeedbackActiveTab.general;
  FeedbackWordEntry? _selectedWordEntry;
  bool _isSubmittedSuccess = false;
  String? _submittedReportedWord;
  bool _isSubmitting = false;

  bool _isLoading = true;
  List<FeedbackWordEntry> _historyWords = [];
  List<FeedbackWordEntry> _allWords = [];
  bool _isFullDictionaryMode = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    try {
      final uidService = sl<DeviceUidService>();
      final uid = await uidService.getDeviceUid();

      final profilesUseCase = sl<GetWordProfilesUseCase>();
      final vocabUseCase = sl<GetVocabularyUseCase>();

      final results = await Future.wait([
        profilesUseCase.execute(GetWordProfilesInput(uid: uid)),
        vocabUseCase.execute(const GetVocabularyInput()),
      ]);

      final profilesOutput = results[0] as GetWordProfilesOutput;
      final vocabOutput = results[1] as GetVocabularyOutput;

      final allWords = vocabOutput.vocabulary.words;
      final profiles = profilesOutput.profiles;

      final wordMap = {for (final w in allWords) w.id: w};

      // 1. Lọc các từ đã có trong profile của user
      final historyList = <FeedbackWordEntry>[];
      for (final p in profiles) {
        final w = wordMap[p.wordId];
        if (w != null) {
          historyList.add(
            FeedbackWordEntry(
              word: w,
              gameMode: p.gameMode ?? 'Đấu từ',
            ),
          );
        }
      }

      if (historyList.isEmpty && allWords.isNotEmpty) {
        final sampleWords = allWords.take(15).toList();
        for (var i = 0; i < sampleWords.length; i++) {
          final mode = i % 4 == 0
              ? 'Nối từ'
              : (i % 4 == 1 ? 'Đoán từ' : (i % 4 == 2 ? 'Ôn tập' : 'Đấu từ'));
          historyList.add(
            FeedbackWordEntry(word: sampleWords[i], gameMode: mode),
          );
        }
      }

      final allEntries = allWords
          .map((w) => FeedbackWordEntry(word: w))
          .toList();

      if (mounted) {
        setState(() {
          _historyWords = historyList;
          _allWords = allEntries;
          _isLoading = false;
        });
      }
    } on Object catch (_) {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  void _onPlayAudio(Word word) {
    sl<AppAudioService>().speakWord(word.en);
  }

  String _getUserName() {
    try {
      final authState = context.read<AuthBloc>().state;
      final name = authState.currentUser?.displayName;
      if (name != null && name.trim().isNotEmpty) return name;
    } on Object catch (_) {}
    return 'Người Chơi Bufopia';
  }

  Future<void> _submitWordReport({
    required String issueType,
    required String content,
    String? contact,
  }) async {
    final entry = _selectedWordEntry;
    if (entry == null) return;

    setState(() => _isSubmitting = true);

    try {
      final uid = await sl<DeviceUidService>().getDeviceUid();
      final userName = _getUserName();
      final word = entry.word;

      final formattedMessage =
          '[Báo lỗi từ vựng: ${word.en} | Nghĩa hiện tại: ${word.vi} | '
          'Chế độ: ${entry.gameMode} | ID: ${word.id} | Topic: ${word.topic}]\n'
          'Loại góp ý: $issueType\n'
          'Nội dung đề xuất: $content';

      await sl<SendFeedbackUseCase>().execute(
        SendFeedbackInput(
          uid: uid,
          userName: userName,
          category: 'content',
          message: formattedMessage,
          contact: contact,
          page: '/vocab/${Uri.encodeComponent(word.en)}',
        ),
      );

      sl<AppAudioService>().playClickSfx();

      if (mounted) {
        setState(() {
          _isSubmitting = false;
          _isSubmittedSuccess = true;
          _submittedReportedWord = word.en;
        });
      }
    } on Object catch (_) {
      if (mounted) {
        setState(() => _isSubmitting = false);
        AppSnackBar.showError(
          context,
          'Lỗi kết nối máy chủ, vui lòng thử lại sau',
        );
      }
    }
  }

  Future<void> _submitGeneralFeedback({
    required String category,
    required String message,
    String? contact,
  }) async {
    setState(() => _isSubmitting = true);

    try {
      final uid = await sl<DeviceUidService>().getDeviceUid();
      final userName = _getUserName();

      await sl<SendFeedbackUseCase>().execute(
        SendFeedbackInput(
          uid: uid,
          userName: userName,
          category: category,
          message: message,
          contact: contact,
          page: '/feedback',
        ),
      );

      sl<AppAudioService>().playClickSfx();

      if (mounted) {
        setState(() {
          _isSubmitting = false;
          _isSubmittedSuccess = true;
          _submittedReportedWord = null;
        });
      }
    } on Object catch (_) {
      if (mounted) {
        setState(() => _isSubmitting = false);
        AppSnackBar.showError(
          context,
          'Lỗi kết nối máy chủ, vui lòng thử lại sau',
        );
      }
    }
  }

  void _handleResetForm() {
    setState(() {
      _isSubmittedSuccess = false;
      _selectedWordEntry = null;
      _submittedReportedWord = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final displayEntries = _isFullDictionaryMode ? _allWords : _historyWords;

    return AppGameDialog(
      title: 'GÓP Ý & BÁO LỖI',
      icon: Icons.chat_bubble_rounded,
      maxWidth: 340.w,
      maxHeight: _isSubmittedSuccess ? 320.h : 560.h,
      isScrollable: false,
      footerText: '⭐ Ý kiến của bạn giúp Bufopia ngày một tốt hơn ⭐',
      padding: EdgeInsets.fromLTRB(10.w, 8.h, 10.w, 8.h),
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.blueLight, AppColors.blueDark],
      boxShadow: isPaper
          ? [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.12),
                blurRadius: 16.r,
                offset: Offset(0, 8.h),
              ),
            ]
          : null,
      footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
      footerBorderColor: isPaper ? AppColors.paperBorder : null,
      footerTextColor: isPaper ? AppColors.paperTextMedium : null,
      child: _isSubmittedSuccess
          ? FeedbackSuccess(
              reportedWord: _submittedReportedWord,
              onReset: _handleResetForm,
              onComplete: () => Navigator.of(context).pop(),
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // 1. Tab Switcher
                FeedbackHeader(
                  activeTab: _activeTab,
                  historyCount: _historyWords.length,
                  onTabChanged: (tab) {
                    setState(() {
                      _activeTab = tab;
                      _selectedWordEntry = null;
                    });
                  },
                ),

                SizedBox(height: 8.h),

                // 2. Nội dung Tab
                Expanded(
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              AppColors.primary,
                            ),
                          ),
                        )
                      : _activeTab == FeedbackActiveTab.general
                      ? FeedbackTab(
                          isSubmitting: _isSubmitting,
                          onSubmit: _submitGeneralFeedback,
                        )
                      : _selectedWordEntry != null
                      ? FeedbackReport(
                          entry: _selectedWordEntry!,
                          isSubmitting: _isSubmitting,
                          onBack: () => setState(
                            () => _selectedWordEntry = null,
                          ),
                          onSubmit: _submitWordReport,
                          onPlayAudio: () => _onPlayAudio(
                            _selectedWordEntry!.word,
                          ),
                        )
                      : FeedbackWordList(
                          entries: displayEntries,
                          isFullDictionaryMode: _isFullDictionaryMode,
                          onSelectWord: (entry) => setState(
                            () => _selectedWordEntry = entry,
                          ),
                          onPlayAudio: _onPlayAudio,
                          onSearchAllVocabulary: () {
                            setState(() {
                              _isFullDictionaryMode = true;
                            });
                          },
                        ),
                ),
              ],
            ),
    );
  }
}
