import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_result_card.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/bloc/vocabulary_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Overlay Thông báo Kết Quả Trận Đấu (Game Over)
/// Tự động thích ứng cả màn hình dọc (Portrait) và ngang (Landscape)
class VocabularyResultDialog extends StatelessWidget {
  const VocabularyResultDialog({
    required this.state,
    required this.player1Name,
    required this.player2Name,
    super.key,
    this.onBackPressed,
  });

  final VocabularyState state;
  final String player1Name;
  final String player2Name;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final l10n = context.l10n;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final isLocal2P =
        !state.isBotOpponent &&
        (state.roomCode == null || state.roomCode!.isEmpty);

    final isTie = state.player1Score == state.player2Score;
    final isP1Winner = state.player1Score > state.player2Score;

    String resultTitle;
    Color resultColor;
    if (isTie) {
      resultTitle = l10n.draw;
      resultColor = isPaper ? AppColors.paperTextDark : AppColors.gold;
    } else if (isLocal2P) {
      resultTitle = isP1Winner
          ? l10n.playerWins(player1Name)
          : l10n.playerWins(player2Name);
      resultColor = isP1Winner
          ? (isPaper ? AppColors.playerPinkDark : AppColors.playerPink)
          : (isPaper ? AppColors.playerBlueDark : AppColors.blue);
    } else {
      resultTitle = isP1Winner ? l10n.victory : l10n.defeat;
      resultColor = isP1Winner ? AppColors.green : AppColors.red;
    }

    final p2Subtitle = isLocal2P
        ? l10n.player2
        : (state.isBotOpponent ? l10n.botOpponent : l10n.humanOpponent);

    final reward = state.reward;
    final gainedXp = (reward != null && reward.gainedXp > 0)
        ? reward.gainedXp
        : (isP1Winner ? 25 : 10);
    final streakDays = (reward != null && reward.streak > 0)
        ? reward.streak
        : 2;

    final p1Badges = <Widget>[
      AppResultBadgeChip.xp(gainedXp),
      AppResultBadgeChip.streak(streakDays),
    ];
    if (reward != null && reward.winStreak > 0) {
      p1Badges.add(AppResultBadgeChip.winStreak(reward.winStreak));
    }

    final p2Badges = <Widget>[
      AppResultBadgeChip.rival(text: p2Subtitle),
      if (!isTie && !isP1Winner)
        AppResultBadgeChip.rival(text: l10n.leadPracticeRound),
    ];

    final totalQ = state.questions.isNotEmpty ? state.questions.length : 15;
    final p2Correct = (state.player2Score ~/ 10).clamp(0, totalQ);
    final p1Acc = totalQ == 0
        ? '100%'
        : '${((state.correctCountP1 / totalQ) * 100).toInt()}%';
    final p2Acc = totalQ == 0
        ? '100%'
        : '${((p2Correct / totalQ) * 100).toInt()}%';

    final p1Card = AppResultPlayerCard(
      name: player1Name,
      isLeader: isP1Winner,
      scoreText: context.l10n.pointsCount(state.player1Score),
      correctCount: context.l10n.questionsCount(state.correctCountP1),
      accuracy: p1Acc,
      streak: '${state.correctCountP1}',
      badges: p1Badges,
      isPaper: isPaper,
    );

    final p2Card = AppResultPlayerCard(
      name: player2Name,
      avatarUrl: state.opponentAvatar,
      nameColor: const Color(0xFF1E88E5),
      isLeader: !isTie && !isP1Winner,
      scoreText: context.l10n.pointsCount(state.player2Score),
      correctCount: context.l10n.questionsCount(p2Correct),
      fastestTime: '5.2s',
      accuracy: p2Acc,
      streak: '$p2Correct',
      badges: p2Badges,
      isPaper: isPaper,
    );

    final screenW = MediaQuery.of(context).size.width;
    final dialogWidth = isLandscape
        ? 600.0
        : (screenW - 32.w).clamp(310.0, 360.0);
    final dialogPadding = isLandscape
        ? const EdgeInsets.symmetric(horizontal: 16, vertical: 12)
        : EdgeInsets.symmetric(horizontal: 8.w, vertical: 14.h);
    final titleFontSize = isLandscape ? 18.0 : 22.sp;
    final sectionSpacing = isLandscape ? 8.0 : 12.h;
    final btnHeight = isLandscape ? 36.0 : 36.h;
    final btnFontSize = isLandscape ? 12.0 : 12.sp;
    final btnSpacing = isLandscape ? 10.0 : 16.h;

    return ColoredBox(
      color: AppColors.black.withValues(alpha: 0.54),
      child: Center(
        child: Container(
          width: dialogWidth,
          padding: dialogPadding,
          decoration: BoxDecoration(
            color: isPaper ? AppColors.paperCardBg : AppColors.white,
            borderRadius: BorderRadius.circular(isLandscape ? 20 : 24.r),
            border: isPaper
                ? Border.all(
                    color: AppColors.paperBorder,
                    width: isLandscape ? 1.5 : 1.5.w,
                  )
                : null,
            boxShadow: isPaper
                ? [
                    BoxShadow(
                      color: AppColors.paperExtrusion,
                      offset: Offset(0, isLandscape ? 3 : 4.h),
                    ),
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.12),
                      blurRadius: isLandscape ? 12 : 16.r,
                      offset: Offset(0, isLandscape ? 5 : 6.h),
                    ),
                  ]
                : [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.26),
                      blurRadius: isLandscape ? 12 : 16.r,
                      offset: Offset(0, isLandscape ? 3 : 4.h),
                    ),
                  ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: AppText.h1(
                  resultTitle,
                  fontWeight: FontWeight.w700,
                  fontSize: titleFontSize,
                  color: resultColor,
                ),
              ),
              SizedBox(height: sectionSpacing),

              // Khối thẻ đối đầu VS chuẩn giao diện Web
              AppResultCard(
                player1Card: p1Card,
                player2Card: p2Card,
                isPaper: isPaper,
              ),
              SizedBox(height: sectionSpacing),

              // Trạng thái lưu & nhận thưởng
              if (state.isSavingReward)
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: isLandscape ? 4 : 6.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: isLandscape ? 16 : 18.r,
                        height: isLandscape ? 16 : 18.r,
                        child: CircularProgressIndicator(
                          strokeWidth: isLandscape ? 2 : 2.5.w,
                          valueColor: AlwaysStoppedAnimation(
                            isPaper ? AppColors.paperGreen : AppColors.orange,
                          ),
                        ),
                      ),
                      SizedBox(width: isLandscape ? 8 : 10.w),
                      AppText.b2(
                        l10n.calculatingReward,
                        color: isPaper
                            ? AppColors.paperTextMedium
                            : AppColors.grayMedium,
                        fontSize: isLandscape ? 11 : 12.sp,
                      ),
                    ],
                  ),
                )
              else if (reward != null) ...[
                // Banner chúc mừng nếu Level Up
                if (reward.leveledUp)
                  Container(
                    margin: EdgeInsets.only(bottom: isLandscape ? 6 : 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: isLandscape ? 10 : 12.w,
                      vertical: isLandscape ? 3 : 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.orange.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: AppColors.orange,
                        width: isLandscape ? 1.2 : 1.5.w,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_upward_rounded,
                          color: AppColors.orange,
                          size: isLandscape ? 14 : 16.r,
                        ),
                        SizedBox(width: isLandscape ? 4 : 6.w),
                        AppText.b2(
                          l10n.levelUpBanner(
                            reward.oldLevel,
                            reward.newLevel,
                          ),
                          fontWeight: FontWeight.w700,
                          fontSize: isLandscape ? 11 : 12.sp,
                          color: AppColors.orangeDeep,
                        ),
                      ],
                    ),
                  ),
              ],

              SizedBox(height: btnSpacing),

              // Trạng thái tái đấu / đối thủ rời phòng (Online mode)
              if (!state.isBotOpponent && state.roomCode != null) ...[
                if (state.isOpponentLeft)
                  Container(
                    margin: EdgeInsets.only(bottom: isLandscape ? 6 : 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: isLandscape ? 4 : 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.red.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                        color: AppColors.red.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.info_outline_rounded,
                          size: isLandscape ? 14 : 14.r,
                          color: AppColors.red,
                        ),
                        SizedBox(width: 4.w),
                        AppText.b2(
                          state.opponentLeftMessage ?? l10n.opponentLeftTitle,
                          fontSize: isLandscape ? 12.0 : 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.red,
                        ),
                      ],
                    ),
                  )
                else if (state.isRematchRequested)
                  Container(
                    margin: EdgeInsets.only(bottom: isLandscape ? 6 : 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: isLandscape ? 4 : 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.orange.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                        color: AppColors.orange.withValues(alpha: 0.3),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: isLandscape ? 12 : 12.r,
                          height: isLandscape ? 12 : 12.r,
                          child: const CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppColors.orange,
                          ),
                        ),
                        SizedBox(width: 6.w),
                        AppText.b2(
                          l10n.waitingForRematchAccept,
                          fontSize: isLandscape ? 12.0 : 12.sp,
                          fontWeight: FontWeight.w600,
                          color: AppColors.orange,
                        ),
                      ],
                    ),
                  )
                else if (state.isOpponentWantRematch)
                  Container(
                    margin: EdgeInsets.only(bottom: isLandscape ? 6 : 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: isLandscape ? 4 : 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.green.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(6.r),
                      border: Border.all(
                        color: AppColors.green.withValues(alpha: 0.4),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.sports_kabaddi_rounded,
                          size: isLandscape ? 14 : 14.r,
                          color: AppColors.green,
                        ),
                        SizedBox(width: 4.w),
                        AppText.b2(
                          l10n.opponentWantsRematch,
                          fontSize: isLandscape ? 12.0 : 12.sp,
                          fontWeight: FontWeight.w700,
                          color: AppColors.green,
                        ),
                      ],
                    ),
                  ),
              ],

              // Các nút hành động: Thoát & Chơi lại
              Row(
                children: [
                  if (onBackPressed != null)
                    Expanded(
                      child: AppButton(
                        text: state.isOpponentLeft ? l10n.home : l10n.quit,
                        height: btnHeight,
                        fontSize: btnFontSize,
                        backgroundColor: isPaper
                            ? AppColors.paperSurface
                            : AppColors.white,
                        textColor: isPaper
                            ? AppColors.paperTextDark
                            : AppColors.grayDark,
                        borderColor: isPaper
                            ? AppColors.paperBorder
                            : AppColors.grayLight,
                        extrusionColor: isPaper
                            ? AppColors.paperExtrusion
                            : AppColors.grayExtrusion,
                        onPressed: onBackPressed,
                      ),
                    ),
                  if (onBackPressed != null && !state.isOpponentLeft)
                    SizedBox(width: isLandscape ? 8 : 10.w),
                  if (!state.isOpponentLeft)
                    Expanded(
                      child: isPaper
                          ? AppButton(
                              text: state.isRematchRequested
                                  ? l10n.waiting
                                  : (state.isOpponentWantRematch
                                        ? l10n.rematchNow
                                        : l10n.playAgain),
                              isLoading: state.isRematchRequested,
                              height: btnHeight,
                              fontSize: btnFontSize,
                              backgroundColor: AppColors.paperGreen,
                              borderColor: AppColors.paperGreenBorder,
                              extrusionColor: AppColors.paperGreenExtrusion,
                              onPressed: state.isRematchRequested
                                  ? null
                                  : () {
                                      context.read<VocabularyBloc>().add(
                                        const VocabularyEvent.restartGame(),
                                      );
                                    },
                            )
                          : AppButton.primary(
                              text: state.isRematchRequested
                                  ? l10n.waiting
                                  : (state.isOpponentWantRematch
                                        ? l10n.rematchNow
                                        : l10n.playAgain),
                              isLoading: state.isRematchRequested,
                              height: btnHeight,
                              fontSize: btnFontSize,
                              onPressed: state.isRematchRequested
                                  ? null
                                  : () {
                                      context.read<VocabularyBloc>().add(
                                        const VocabularyEvent.restartGame(),
                                      );
                                    },
                            ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
