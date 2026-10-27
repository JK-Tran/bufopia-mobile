import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_settings_dialog.dart';
import 'package:bufopia/features/practice/domain/entities/word_memory.dart';
import 'package:bufopia/features/practice/presentation/review/bloc/review_bloc.dart';
import 'package:bufopia/features/practice/presentation/review/pages/review_practice_page.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/dialog/pronunciation_assessment_dialog.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/review_action_row.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/review_player_card.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/review_top_bar.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/review_word_grid.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ReviewPage extends StatefulWidget {
  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends BasePageState<ReviewPage, ReviewBloc> {
  @override
  bool get useSafeArea => false;

  @override
  EdgeInsetsGeometry? get pagePadding => EdgeInsets.zero;

  @override
  void initState() {
    super.initState();
    bloc.add(const ReviewEvent.init());
  }

  void _onBack() {
    context.read<AppBloc>().add(
      const AppEvent.clickSoundPlayed(),
    );
    if (context.canPop()) {
      context.pop();
    } else {
      context.go(AppRouter.home);
    }
  }

  void _onStartPractice(
    List<WordMemory> weakWords,
    Map<String, Word> vocabMap,
    String uid,
    String? token,
  ) {
    if (weakWords.isEmpty) {
      AppToast.showWarning(context, context.l10n.noWeakWordsTitle);
      return;
    }

    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => BlocProvider.value(
          value: bloc,
          child: ReviewPracticePage(
            weakWords: weakWords,
            vocabMap: vocabMap,
            uid: uid,
            token: token,
          ),
        ),
      ),
    );
  }

  void _onSaveToInventory(int count) {
    if (count == 0) {
      AppToast.showWarning(context, context.l10n.noWeakWordsToSave);
      return;
    }
    AppToast.showSuccess(
      context,
      context.l10n.savedAllWeakWords(count),
    );
  }

  void _onAssessWord(
    WordMemory memory,
    Map<String, Word> vocabMap,
    String uid,
    String? token,
  ) {
    final word = vocabMap[memory.wordId];
    final cleanWord = word?.en ?? StringUtils.cleanWordId(memory.wordId);
    PronunciationAssessmentDialog.show(
      context,
      bloc: bloc,
      word: cleanWord,
      uid: uid,
      phonetic: word?.phonetic,
      meaning: word?.vi,
      token: token,
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final user = context.select<AuthBloc, User?>(
      (b) => b.state.currentUser,
    );

    final displayName = user?.displayName ?? context.l10n.player;
    final level = user?.level ?? 1;
    final avatarUrl = user?.avatarUrl;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background
          Image.asset(
            isPaper
                ? 'assets/images/background_switch/app_background_1.webp'
                : 'assets/images/app_background.webp',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            errorBuilder: (_, _, _) => ColoredBox(
              color: isPaper ? AppColors.paperBackground : AppColors.greenLight,
            ),
          ),

          SafeArea(
            child: Padding(
              padding: EdgeInsets.fromLTRB(12.w, 6.h, 12.w, 16.h),
              child: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 1080.w),
                  child: Column(
                    children: [
                      // 1. Top Bar
                      ReviewTopBar(
                        isPaperTheme: isPaper,
                        onBackPressed: _onBack,
                        onSettingsPressed: () => HomeSettingsDialog.show(
                          context,
                        ),
                      ),

                      SizedBox(height: 10.h),

                      // 2. Main White / Paper Card Container (Image 1)
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          padding: EdgeInsets.fromLTRB(12.w, 12.h, 12.w, 10.h),
                          decoration: BoxDecoration(
                            color: isPaper
                                ? AppColors.paperCardBg
                                : AppColors.white,
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(
                              color: isPaper
                                  ? AppColors.paperBorder
                                  : AppColors.grayLight,
                              width: 2.w,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: isPaper
                                    ? AppColors.paperExtrusion
                                    : AppColors.grayExtrusion,
                                offset: Offset(0, 4.h),
                              ),
                              BoxShadow(
                                color: AppColors.black.withValues(alpha: 0.1),
                                offset: Offset(0, 8.h),
                                blurRadius: 14.r,
                              ),
                            ],
                          ),
                          child: BlocBuilder<ReviewBloc, ReviewState>(
                            builder: (context, state) {
                              final weakWords = state.weakWords;

                              if (state.isLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      AppColors.primary,
                                    ),
                                  ),
                                );
                              }

                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  // 2.1 User Profile Header Bar
                                  ReviewPlayerCard(
                                    displayName: displayName,
                                    level: level,
                                    weakCount: weakWords.length,
                                    avatarUrl: avatarUrl,
                                    isPaperTheme: isPaper,
                                  ),

                                  SizedBox(height: 10.h),

                                  // 2.2 Action Row (Title + Buttons)
                                  ReviewActionRow(
                                    weakWordsCount: weakWords.length,
                                    isPaperTheme: isPaper,
                                    onSaveToInventory: () =>
                                        _onSaveToInventory(weakWords.length),
                                    onStartPractice: () => _onStartPractice(
                                      weakWords,
                                      state.vocabMap,
                                      state.uid,
                                      state.token,
                                    ),
                                  ),

                                  SizedBox(height: 6.h),

                                  // Dotted separator line
                                  Divider(
                                    color: isPaper
                                        ? AppColors.paperBorder
                                        : AppColors.grayLight,
                                    thickness: 1.h,
                                    height: 12.h,
                                  ),

                                  // 2.3 Word Cards Grid
                                  Expanded(
                                    child: ReviewWordGrid(
                                      weakWords: weakWords,
                                      isPaperTheme: isPaper,
                                      vocabMap: state.vocabMap,
                                      onAssessWord: (m) => _onAssessWord(
                                        m,
                                        state.vocabMap,
                                        state.uid,
                                        state.token,
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
