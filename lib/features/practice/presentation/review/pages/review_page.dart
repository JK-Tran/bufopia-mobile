import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/constants/app_text.dart';
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
import 'package:bufopia/features/practice/presentation/review/widgets/review_header.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/review_player_card.dart';
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
                      Row(
                        children: [
                          AppIconButton(
                            icon: Icons.arrow_back_ios_new_rounded,
                            tooltip: context.l10n.back,
                            size: 36.r,
                            iconSize: 18.r,
                            backgroundColor: isPaper
                                ? AppColors.paperCardBg
                                : AppColors.white,
                            iconColor: isPaper
                                ? AppColors.paperTextDark
                                : AppColors.grayDark,
                            borderColor: isPaper
                                ? AppColors.paperBorder
                                : AppColors.grayLight,
                            extrusionColor: isPaper
                                ? AppColors.paperExtrusion
                                : AppColors.grayExtrusion,
                            extrusionHeight: 2.5,
                            onPressed: () {
                              context.read<AppBloc>().add(
                                const AppEvent.clickSoundPlayed(),
                              );
                              if (context.canPop()) {
                                context.pop();
                              } else {
                                context.go(AppRouter.home);
                              }
                            },
                          ),

                          Expanded(
                            child: Center(
                              child: ReviewHeader(isPaperTheme: isPaper),
                            ),
                          ),

                          AppIconButton(
                            icon: Icons.settings_rounded,
                            tooltip: context.l10n.settings,
                            size: 36.r,
                            iconSize: 18.r,
                            backgroundColor: isPaper
                                ? AppColors.paperCardBg
                                : AppColors.white,
                            iconColor: isPaper
                                ? AppColors.paperHeaderIcon
                                : AppColors.sky,
                            borderColor: isPaper
                                ? AppColors.paperBorder
                                : AppColors.grayLight,
                            extrusionColor: isPaper
                                ? AppColors.paperExtrusion
                                : AppColors.grayExtrusion,
                            extrusionHeight: 2.5,
                            onPressed: () => HomeSettingsDialog.show(context),
                          ),
                        ],
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
                                  LayoutBuilder(
                                    builder: (context, constraints) {
                                      final isCompact =
                                          constraints.maxWidth < 560;

                                      final saveButton = AppButton(
                                        text: isCompact
                                            ? context.l10n.saveAllToVault
                                            : '${context.l10n.saveAllToVault} '
                                                  '(${weakWords.length})',
                                        icon: Icon(
                                          Icons.bookmark_border_rounded,
                                          size: 15.r,
                                          color: isPaper
                                              ? AppColors.paperTextDark
                                              : AppColors.grayDark,
                                        ),
                                        height: 36.h,
                                        fontSize: 12.sp,
                                        backgroundColor: isPaper
                                            ? AppColors.paperSurface
                                            : AppColors.white,
                                        borderColor: isPaper
                                            ? AppColors.paperBorder
                                            : AppColors.grayLight,
                                        extrusionColor: isPaper
                                            ? AppColors.paperExtrusion
                                            : AppColors.grayExtrusion,
                                        textColor: isPaper
                                            ? AppColors.paperTextDark
                                            : AppColors.grayDark,
                                        extrusionHeight: 2.5,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 10.w,
                                        ),
                                        onPressed: () => _onSaveToInventory(
                                          weakWords.length,
                                        ),
                                      );

                                      final practiceButton = AppButton(
                                        text: context.l10n.startPracticing,
                                        icon: Icon(
                                          Icons.auto_stories_rounded,
                                          size: 16.r,
                                          color: AppColors.white,
                                        ),
                                        height: 36.h,
                                        fontSize: 12.sp,
                                        extrusionHeight: 2.5,
                                        backgroundColor: isPaper
                                            ? AppColors.paperGreen
                                            : AppColors.greenDark,
                                        borderColor: isPaper
                                            ? AppColors.paperGreenBorder
                                            : AppColors.greenLight,
                                        extrusionColor: isPaper
                                            ? AppColors.paperGreenExtrusion
                                            : AppColors.green,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.w,
                                        ),
                                        onPressed: () => _onStartPractice(
                                          weakWords,
                                          state.vocabMap,
                                          state.uid,
                                          state.token,
                                        ),
                                      );

                                      final isZero = weakWords.isEmpty;
                                      final Color badgeBg;
                                      final Color badgeBorder;
                                      final Color badgeTextColor;

                                      if (isPaper) {
                                        badgeBg = isZero
                                            ? AppColors.feedbackSuccessBg
                                            : AppColors.paperAmberBadgeBg;
                                        badgeBorder = isZero
                                            ? AppColors.feedbackSuccessBorder
                                            : AppColors.paperAmberBadgeBorder;
                                        badgeTextColor = isZero
                                            ? AppColors.feedbackSuccessIcon
                                            : AppColors.paperAmberBadgeText;
                                      } else {
                                        badgeBg = isZero
                                            ? AppColors.topicEasyBg
                                            : AppColors.topicMediumBg;
                                        badgeBorder = isZero
                                            ? AppColors.greenLight
                                            : AppColors.orangeLight;
                                        badgeTextColor = isZero
                                            ? AppColors.greenDark
                                            : AppColors.orangeDark;
                                      }

                                      if (isCompact) {
                                        return Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    AppText.t3(
                                                      context.l10n
                                                          .weakWordsList(
                                                            weakWords.length,
                                                          ),
                                                      color: isPaper
                                                          ? AppColors
                                                                .paperTextDark
                                                          : AppColors.grayDark,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                    SizedBox(width: 8.w),
                                                    Container(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                            horizontal: 8.w,
                                                            vertical: 2.h,
                                                          ),
                                                      decoration: BoxDecoration(
                                                        color: badgeBg,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          10.r,
                                                        ),
                                                        border: Border.all(
                                                          color: badgeBorder,
                                                          width: 1.w,
                                                        ),
                                                      ),
                                                      child: AppText.c1(
                                                        '${weakWords.length}',
                                                        color: badgeTextColor,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12.sp,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 8.h),
                                            Row(
                                              children: [
                                                Expanded(
                                                  flex: 4,
                                                  child: saveButton,
                                                ),
                                                SizedBox(width: 8.w),
                                                Expanded(
                                                  flex: 5,
                                                  child: practiceButton,
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      }

                                      // Web Landscape / Desktop: Wide single-line layout
                                      return Row(
                                        children: [
                                          Expanded(
                                            child: AppText.t3(
                                              context.l10n.weakWordsList(
                                                weakWords.length,
                                              ),
                                              color: isPaper
                                                  ? AppColors.paperTextDark
                                                  : AppColors.grayDark,
                                              fontWeight: FontWeight.w700,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          saveButton,
                                          SizedBox(width: 10.w),
                                          practiceButton,
                                        ],
                                      );
                                    },
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
