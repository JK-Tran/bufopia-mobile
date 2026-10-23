import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_countdown_timer.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Banner đấu trường VS / Bảng điểm đối kháng của phòng nối từ.
/// Thiết kế 2 bên đối xứng hoàn hảo, ở giữa là đồng hồ đếm ngược và VS badge.
class WordChainScoreBoard extends StatelessWidget {
  const WordChainScoreBoard({
    required this.player1Name,
    required this.player1Lives,
    required this.player2Name,
    required this.player2Lives,
    required this.remainingSeconds,
    required this.isMyTurn,
    required this.relaxed,
    super.key,
    this.player1Avatar,
    this.player2Avatar,
  });

  final String player1Name;
  final int player1Lives;
  final String? player1Avatar;
  final String player2Name;
  final int player2Lives;
  final String? player2Avatar;
  final int remainingSeconds;
  final bool isMyTurn;
  final bool relaxed;

  Widget _buildHearts(int lives) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(3, (index) {
        final isAlive = index < lives;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.w),
          child: Icon(
            isAlive ? Icons.favorite_rounded : Icons.favorite_border_rounded,
            size: 13.r,
            color: isAlive ? AppColors.red : AppColors.grayMedium,
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final bannerBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final bannerBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final textColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final activeBorderColor = isPaper
        ? AppColors.paperGreenDark
        : AppColors.green;

    final timerBg = remainingSeconds <= 5 && !relaxed
        ? AppColors.red.withValues(alpha: 0.15)
        : (isPaper
              ? AppColors.paperGreen.withValues(alpha: 0.2)
              : AppColors.primary.withValues(alpha: 0.12));
    final timerColor = remainingSeconds <= 5 && !relaxed
        ? AppColors.red
        : (isPaper ? AppColors.paperGreenDark : AppColors.primary);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: bannerBg,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: bannerBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper
                ? AppColors.paperExtrusion.withValues(alpha: 0.3)
                : AppColors.black.withValues(alpha: 0.05),
            offset: Offset(0, 2.h),
            blurRadius: 4.r,
          ),
        ],
      ),
      child: Row(
        children: [
          // 1. Bên Người chơi (Player 1)
          Expanded(
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isMyTurn
                              ? activeBorderColor
                              : Colors.transparent,
                          width: 2.w,
                        ),
                      ),
                      child: AppAvatar(
                        avatarUrl: player1Avatar,
                        size: 34.r,
                        borderWidth: 1.w,
                        borderColor: bannerBorder,
                      ),
                    ),
                    if (isMyTurn)
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 1.5.h,
                          ),
                          decoration: BoxDecoration(
                            color: activeBorderColor,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: AppText.c1(
                            context.l10n.turnLabel,
                            color: AppColors.white,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(width: 8.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText.c1(
                        player1Name,
                        color: textColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2.h),
                      _buildHearts(player1Lives),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // 2. Trung tâm: VS Badge + Timer đếm ngược
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (relaxed)
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 3.h,
                    ),
                    decoration: BoxDecoration(
                      color: timerBg,
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(
                        color: timerColor.withValues(alpha: 0.4),
                        width: 1.w,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.all_inclusive_rounded,
                          size: 13.r,
                          color: timerColor,
                        ),
                        SizedBox(width: 3.w),
                        AppText.c1(
                          '∞',
                          color: timerColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ],
                    ),
                  )
                else
                  AppCountdownTimer(
                    seconds: remainingSeconds,
                    size: 38.r,
                    fontSize: 12.sp,
                    isPaper: isPaper,
                  ),
                SizedBox(height: 2.h),
                AppText.c1(
                  'VS',
                  color: isPaper
                      ? AppColors.paperTextMuted
                      : AppColors.grayMedium,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                ),
              ],
            ),
          ),

          // 3. Bên Đối thủ (Player 2 / Bot)
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      AppText.c1(
                        player2Name,
                        color: textColor,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2.h),
                      _buildHearts(player2Lives),
                    ],
                  ),
                ),
                SizedBox(width: 8.w),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.w),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: !isMyTurn
                              ? activeBorderColor
                              : Colors.transparent,
                          width: 2.w,
                        ),
                      ),
                      child: AppAvatar(
                        avatarUrl: player2Avatar,
                        size: 34.r,
                        borderWidth: 1.w,
                        borderColor: bannerBorder,
                      ),
                    ),
                    if (!isMyTurn)
                      Positioned(
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 5.w,
                            vertical: 1.5.h,
                          ),
                          decoration: BoxDecoration(
                            color: activeBorderColor,
                            borderRadius: BorderRadius.circular(6.r),
                          ),
                          child: AppText.c1(
                            context.l10n.turnLabel,
                            color: AppColors.white,
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
