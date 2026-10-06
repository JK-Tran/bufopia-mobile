import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/bloc/vocabulary_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Overlay Thông báo Kết Quả Trận Đấu (Game Over) kèm phần thưởng XP / Level / Streak
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
    final isP1Winner = state.player1Score >= state.player2Score;
    final reward = state.reward;

    return ColoredBox(
      color: AppColors.black.withValues(alpha: 0.54),
      child: Center(
        child: Container(
          width: 340.w,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          decoration: BoxDecoration(
            color: isPaper ? AppColors.paperCardBg : AppColors.white,
            borderRadius: BorderRadius.circular(24.r),
            border: isPaper
                ? Border.all(color: AppColors.paperBorder, width: 1.5.w)
                : null,
            boxShadow: isPaper
                ? [
                    BoxShadow(
                      color: AppColors.paperExtrusion,
                      offset: Offset(0, 4.h),
                    ),
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.12),
                      blurRadius: 16.r,
                      offset: Offset(0, 6.h),
                    ),
                  ]
                : [
                    BoxShadow(
                      color: AppColors.black.withValues(alpha: 0.26),
                      blurRadius: 16.r,
                      offset: Offset(0, 4.h),
                    ),
                  ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppText.h1(
                isP1Winner ? '🎉 CHIẾN THẮNG!' : '😢 THUA CUỘC!',
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
                color: isP1Winner ? AppColors.green : AppColors.red,
              ),
              SizedBox(height: 12.h),

              // Bảng Điểm số 2 bên
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: isPaper
                      ? AppColors.paperSurface
                      : AppColors.skySurface,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: isPaper
                        ? AppColors.paperBorder
                        : AppColors.skyBorder,
                    width: 1.5.w,
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
                          fontSize: 12.sp,
                          color: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                        ),
                        AppText.h1(
                          '${state.player1Score}',
                          color: AppColors.purple,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        AppText.c1(
                          'Đúng: ${state.correctCountP1}/15',
                          color: isPaper
                              ? AppColors.paperTextMedium
                              : AppColors.grayMedium,
                          fontSize: 10.sp,
                        ),
                      ],
                    ),
                    AppText.h1(
                      '-',
                      color: AppColors.grayMedium,
                      fontSize: 24.sp,
                    ),
                    Column(
                      children: [
                        AppText.b2(
                          player2Name,
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
                          color: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                        ),
                        AppText.h1(
                          '${state.player2Score}',
                          color: AppColors.purple,
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                        ),
                        AppText.c1(
                          state.isBotOpponent ? 'Bot' : 'Đối thủ',
                          color: isPaper
                              ? AppColors.paperTextMedium
                              : AppColors.grayMedium,
                          fontSize: 10.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 12.h),

              // Trạng thái lưu & nhận thưởng
              if (state.isSavingReward)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 6.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 18.r,
                        height: 18.r,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5.w,
                          valueColor: AlwaysStoppedAnimation(
                            isPaper ? AppColors.paperGreen : AppColors.orange,
                          ),
                        ),
                      ),
                      SizedBox(width: 10.w),
                      AppText.b2(
                        'Đang tính thưởng & lưu kết quả...',
                        color: isPaper
                            ? AppColors.paperTextMedium
                            : AppColors.grayMedium,
                        fontSize: 12.sp,
                      ),
                    ],
                  ),
                )
              else if (reward != null) ...[
                // Banner chúc mừng nếu Level Up
                if (reward.leveledUp)
                  Container(
                    margin: EdgeInsets.only(bottom: 8.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.orange.withValues(alpha: 0.15),
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: AppColors.orange, width: 1.5.w),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_upward_rounded,
                          color: AppColors.orange,
                          size: 16.r,
                        ),
                        SizedBox(width: 6.w),
                        AppText.b2(
                          'LÊN CẤP! Lv.${reward.oldLevel} '
                          '➔ Lv.${reward.newLevel}',
                          fontWeight: FontWeight.w700,
                          fontSize: 12.sp,
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
                    ),
                    _buildRewardPill(
                      icon: Icons.local_fire_department_rounded,
                      iconColor: AppColors.red,
                      label: '${reward.streak} Ngày',
                      isPaperTheme: isPaper,
                    ),
                    _buildRewardPill(
                      icon: Icons.emoji_events_rounded,
                      iconColor: AppColors.orange,
                      label: '${reward.winStreak} Trận',
                      isPaperTheme: isPaper,
                    ),
                  ],
                ),
              ],

              SizedBox(height: 16.h),

              // Các nút hành động: Thoát & Chơi lại
              Row(
                children: [
                  if (onBackPressed != null)
                    Expanded(
                      child: AppButton(
                        text: 'Thoát',
                        height: 36.h,
                        fontSize: 12.sp,
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
                  if (onBackPressed != null) SizedBox(width: 10.w),
                  Expanded(
                    child: isPaper
                        ? AppButton(
                            text: 'Chơi lại',
                            height: 36.h,
                            fontSize: 12.sp,
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
                            height: 36.h,
                            fontSize: 12.sp,
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
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: isPaperTheme
            ? AppColors.paperSurface
            : iconColor.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(10.r),
        border: isPaperTheme
            ? Border.all(color: AppColors.paperBorder, width: 1.w)
            : null,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: iconColor, size: 14.r),
          SizedBox(width: 4.w),
          AppText.c1(
            label,
            fontWeight: FontWeight.w700,
            color: isPaperTheme ? AppColors.paperTextDark : AppColors.grayDark,
            fontSize: 10.sp,
          ),
        ],
      ),
    );
  }
}
