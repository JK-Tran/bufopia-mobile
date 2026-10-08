import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/bloc/vocabulary_bloc.dart';
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
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final isLocal2P = !state.isBotOpponent &&
        (state.roomCode == null || state.roomCode!.isEmpty);

    final isTie = state.player1Score == state.player2Score;
    final isP1Winner = state.player1Score > state.player2Score;

    String resultTitle;
    Color resultColor;
    if (isTie) {
      resultTitle = '🤝 HÒA NHAU!';
      resultColor = isPaper ? AppColors.paperTextDark : AppColors.gold;
    } else if (isLocal2P) {
      resultTitle = isP1Winner
          ? '🎉 $player1Name THẮNG!'
          : '🎉 $player2Name THẮNG!';
      resultColor = isP1Winner
          ? (isPaper ? AppColors.playerPinkDark : AppColors.playerPink)
          : (isPaper ? AppColors.playerBlueDark : AppColors.blue);
    } else {
      resultTitle = isP1Winner ? '🎉 CHIẾN THẮNG!' : '😢 THUA CUỘC!';
      resultColor = isP1Winner ? AppColors.green : AppColors.red;
    }

    final p2Subtitle = isLocal2P
        ? 'Người chơi 2'
        : (state.isBotOpponent ? 'Bot' : 'Đối thủ');

    final reward = state.reward;

    final dialogWidth = isLandscape ? 400.0 : 340.w;
    final dialogPadding = isLandscape
        ? const EdgeInsets.symmetric(horizontal: 20, vertical: 12)
        : EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h);
    final titleFontSize = isLandscape ? 18.0 : 22.sp;
    final sectionSpacing = isLandscape ? 8.0 : 12.h;
    final scoreBoxPadding = isLandscape
        ? const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
        : EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h);
    final nameFontSize = isLandscape ? 12.0 : 12.sp;
    final scoreFontSize = isLandscape ? 22.0 : 24.sp;
    final subFontSize = isLandscape ? 10.0 : 10.sp;
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

              // Bảng Điểm số 2 bên
              Container(
                padding: scoreBoxPadding,
                decoration: BoxDecoration(
                  color: isPaper
                      ? AppColors.paperSurface
                      : AppColors.skySurface,
                  borderRadius: BorderRadius.circular(isLandscape ? 14 : 16.r),
                  border: Border.all(
                    color: isPaper
                        ? AppColors.paperBorder
                        : AppColors.skyBorder,
                    width: isLandscape ? 1.2 : 1.5.w,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        AppText.b2(
                          player1Name,
                          fontWeight: FontWeight.w700,
                          fontSize: nameFontSize,
                          color: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                        ),
                        AppText.h1(
                          '${state.player1Score}',
                          color: isPaper
                              ? AppColors.playerPinkDark
                              : AppColors.purple,
                          fontSize: scoreFontSize,
                          fontWeight: FontWeight.w700,
                        ),
                        AppText.c1(
                          'Đúng: ${state.correctCountP1}/15',
                          color: isPaper
                              ? AppColors.paperTextMedium
                              : AppColors.grayMedium,
                          fontSize: subFontSize,
                        ),
                      ],
                    ),
                    AppText.h1(
                      '-',
                      color: AppColors.grayMedium,
                      fontSize: scoreFontSize,
                    ),
                    Column(
                      children: [
                        AppText.b2(
                          player2Name,
                          fontWeight: FontWeight.w700,
                          fontSize: nameFontSize,
                          color: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                        ),
                        AppText.h1(
                          '${state.player2Score}',
                          color: isPaper
                              ? AppColors.playerBlueDark
                              : AppColors.purple,
                          fontSize: scoreFontSize,
                          fontWeight: FontWeight.w700,
                        ),
                        AppText.c1(
                          p2Subtitle,
                          color: isPaper
                              ? AppColors.paperTextMedium
                              : AppColors.grayMedium,
                          fontSize: subFontSize,
                        ),
                      ],
                    ),
                  ],
                ),
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
                        'Đang tính thưởng & lưu kết quả...',
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
                          'LÊN CẤP! Lv.${reward.oldLevel} '
                          '➔ Lv.${reward.newLevel}',
                          fontWeight: FontWeight.w700,
                          fontSize: isLandscape ? 11 : 12.sp,
                          color: AppColors.orangeDeep,
                        ),
                      ],
                    ),
                  ),

                // Huy hiệu Thưởng: XP, Streak, Win Streak
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildRewardPill(
                      icon: Icons.star_rounded,
                      iconColor: AppColors.yellow,
                      label: '+${reward.gainedXp} XP',
                      isPaperTheme: isPaper,
                      isLandscape: isLandscape,
                    ),
                    _buildRewardPill(
                      icon: Icons.local_fire_department_rounded,
                      iconColor: AppColors.red,
                      label: '${reward.streak} Ngày',
                      isPaperTheme: isPaper,
                      isLandscape: isLandscape,
                    ),
                    _buildRewardPill(
                      icon: Icons.emoji_events_rounded,
                      iconColor: AppColors.orange,
                      label: '${reward.winStreak} Trận',
                      isPaperTheme: isPaper,
                      isLandscape: isLandscape,
                    ),
                  ],
                ),
              ],

              SizedBox(height: btnSpacing),

              // Các nút hành động: Thoát & Chơi lại
              Row(
                children: [
                  if (onBackPressed != null)
                    Expanded(
                      child: AppButton(
                        text: 'Thoát',
                        height: btnHeight,
                        fontSize: btnFontSize,
                        fontWeight: FontWeight.w700,
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
                  if (onBackPressed != null)
                    SizedBox(width: isLandscape ? 8 : 10.w),
                  Expanded(
                    child: isPaper
                        ? AppButton(
                            text: 'Chơi lại',
                            height: btnHeight,
                            fontSize: btnFontSize,
                            fontWeight: FontWeight.w700,
                            backgroundColor: AppColors.paperGreen,
                            borderColor: AppColors.paperGreenBorder,
                            extrusionColor: AppColors.paperGreenExtrusion,
                            onPressed: () {
                              context.read<VocabularyBloc>().add(
                                const VocabularyEvent.restartGame(),
                              );
                            },
                          )
                        : AppButton.primary(
                            text: 'Chơi lại',
                            height: btnHeight,
                            fontSize: btnFontSize,
                            onPressed: () {
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

  Widget _buildRewardPill({
    required IconData icon,
    required Color iconColor,
    required String label,
    required bool isPaperTheme,
    required bool isLandscape,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: isLandscape ? 8 : 8.w,
        vertical: isLandscape ? 3 : 4.h,
      ),
      decoration: BoxDecoration(
        color: isPaperTheme
            ? AppColors.paperSurface
            : iconColor.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(isLandscape ? 8 : 10.r),
        border: isPaperTheme
            ? Border.all(
                color: AppColors.paperBorder,
                width: isLandscape ? 1 : 1.w,
              )
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: iconColor, size: isLandscape ? 13 : 14.r),
          SizedBox(width: isLandscape ? 4 : 4.w),
          AppText.c1(
            label,
            fontWeight: FontWeight.w700,
            color: isPaperTheme ? AppColors.paperTextDark : AppColors.grayDark,
            fontSize: isLandscape ? 10 : 10.sp,
          ),
        ],
      ),
    );
  }
}
