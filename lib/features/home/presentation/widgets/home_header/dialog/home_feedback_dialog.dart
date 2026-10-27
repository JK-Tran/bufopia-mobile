import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/presentation/bloc/feedback/feedback_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/feedback/feedback.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

export 'package:bufopia/features/home/presentation/widgets/home_header/feedback/feedback.dart';

class HomeFeedbackDialog extends StatelessWidget {
  const HomeFeedbackDialog({this.initialWordEntry, super.key});

  final FeedbackWordEntry? initialWordEntry;

  static Future<void> show(
    BuildContext context, {
    FeedbackWordEntry? initialWordEntry,
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (_) {
        final bloc = sl<FeedbackBloc>()..add(const FeedbackEvent.initiated());
        if (initialWordEntry != null) {
          bloc
            ..add(const FeedbackEvent.tabChanged(FeedbackActiveTab.wordList))
            ..add(FeedbackEvent.wordEntrySelected(initialWordEntry));
        }
        return BlocProvider(
          create: (_) => bloc,
          child: HomeFeedbackDialog(initialWordEntry: initialWordEntry),
        );
      },
    );
  }

  void _onPlayAudio(Word word) {
    sl<AppAudioService>().speakWord(word.en);
  }

  void _onToggleFullDictionary(BuildContext context) {
    context.read<FeedbackBloc>().add(
      const FeedbackEvent.toggleFullDictionaryMode(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return BlocConsumer<FeedbackBloc, FeedbackState>(
      listenWhen: (prev, curr) =>
          prev.errorMessage != curr.errorMessage && curr.errorMessage != null,
      listener: (context, state) {
        if (state.errorMessage != null) {
          AppToast.showError(context, state.errorMessage!);
        }
      },
      builder: (context, state) {
        final displayEntries = state.isFullDictionaryMode
            ? state.allWords
            : state.historyWords;

        final dialogHeight = state.isSubmittedSuccess
            ? (isLandscape ? 280.0 : 320.h)
            : (isLandscape ? 330.0 : 560.h);

        return AppGameDialog(
          title: context.l10n.feedbackReport.toUpperCase(),
          icon: Icons.chat_bubble_rounded,
          maxWidth: 340.w,
          height: dialogHeight,
          isScrollable: false,
          footerText: context.l10n.feedbackFooter,
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
          child: state.isSubmittedSuccess
              ? FeedbackSuccess(
                  reportedWord: state.submittedReportedWord,
                  onReset: () => context.read<FeedbackBloc>().add(
                    const FeedbackEvent.resetForm(),
                  ),
                  onComplete: () => Navigator.of(context).pop(),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // 1. Tab Switcher
                    FeedbackHeader(
                      activeTab: state.activeTab,
                      historyCount: state.historyWords.length,
                      onTabChanged: (tab) => context.read<FeedbackBloc>().add(
                        FeedbackEvent.tabChanged(tab),
                      ),
                    ),

                    SizedBox(height: 8.h),

                    // 2. Nội dung Tab
                    Expanded(
                      child: state.activeTab == FeedbackActiveTab.general
                          ? FeedbackTab(
                              isSubmitting: state.isSubmitting,
                              onSubmit:
                                  ({
                                    required category,
                                    required message,
                                    contact,
                                  }) async => context.read<FeedbackBloc>().add(
                                    FeedbackEvent.submitGeneralFeedback(
                                      category: category,
                                      message: message,
                                      contact: contact,
                                    ),
                                  ),
                            )
                          : state.selectedWordEntry != null
                          ? FeedbackReport(
                              entry: state.selectedWordEntry!,
                              isSubmitting: state.isSubmitting,
                              onBack: () => context.read<FeedbackBloc>().add(
                                const FeedbackEvent.wordEntrySelected(null),
                              ),
                              onSubmit:
                                  ({
                                    required issueType,
                                    required content,
                                    contact,
                                  }) async => context.read<FeedbackBloc>().add(
                                    FeedbackEvent.submitWordReport(
                                      issueType: issueType,
                                      content: content,
                                      contact: contact,
                                    ),
                                  ),
                              onPlayAudio: () => _onPlayAudio(
                                state.selectedWordEntry!.word,
                              ),
                            )
                          : state.isLoading
                          ? const Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.primary,
                                ),
                              ),
                            )
                          : FeedbackWordList(
                              entries: displayEntries,
                              isFullDictionaryMode: state.isFullDictionaryMode,
                              onSelectWord: (entry) =>
                                  context.read<FeedbackBloc>().add(
                                    FeedbackEvent.wordEntrySelected(entry),
                                  ),
                              onPlayAudio: _onPlayAudio,
                              onSearchAllVocabulary: () =>
                                  _onToggleFullDictionary(context),
                            ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
