import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Badge hiển thị thông tin người chơi trong Quick Battle
/// (Avatar + Cụm Score & Tên dạng Card xếp dọc, hỗ trợ Paper & Classic theme)
class VocabularyPlayerBadge extends StatelessWidget {
  const VocabularyPlayerBadge({
    required this.name,
    required this.avatarPath,
    required this.gradientColors,
    required this.borderColor,
    required this.shadowColor,
    super.key,
    this.score = 0,
    this.avatarSize = 52,
    this.isReversed = false,
  });

  /// Factory cho Player 1 (Hồng / Nữ) - Căn trái
  factory VocabularyPlayerBadge.player1({
    Key? key,
    String name = 'ALEX (P1)',
    String avatarPath = 'assets/images/bunny-avatar.webp',
    int score = 0,
    double avatarSize = 52,
  }) {
    return VocabularyPlayerBadge(
      key: key,
      name: name,
      avatarPath: avatarPath,
      score: score,
      avatarSize: avatarSize,
      gradientColors: const [
        AppColors.playerPinkLight,
        AppColors.playerPinkDark,
      ],
      borderColor: AppColors.playerPink,
      shadowColor: AppColors.playerPinkShadow,
    );
  }

  /// Factory cho Player 2 (Xanh / Nam) - Căn phải (Đối xứng gương)
  factory VocabularyPlayerBadge.player2({
    Key? key,
    String name = 'BOT (VỪA)',
    String avatarPath = 'assets/images/pip-avatar.webp',
    int score = 0,
    double avatarSize = 52,
    bool isReversed = true,
  }) {
    return VocabularyPlayerBadge(
      key: key,
      name: name,
      avatarPath: avatarPath,
      score: score,
      avatarSize: avatarSize,
      gradientColors: const [
        AppColors.playerBlueLight,
        AppColors.playerBlueDark,
      ],
      borderColor: AppColors.playerBlue,
      shadowColor: AppColors.playerBlueShadow,
      isReversed: isReversed,
    );
  }

  final String name;
  final String avatarPath;
  final int score;
  final double avatarSize;
  final List<Color> gradientColors;
  final Color borderColor;
  final Color shadowColor;
  final bool isReversed;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final avatarWidget = Container(
      width: avatarSize.r,
      height: avatarSize.r,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: borderColor,
          width: 3.w,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor.withValues(alpha: isPaper ? 0.3 : 0.5),
            offset: Offset(0, 2.5.h),
            blurRadius: 3.r,
          ),
        ],
      ),
      child: AppAvatar(
        avatarUrl: avatarPath,
        size: (avatarSize - 6).r,
      ),
    );

    final infoCard = Container(
      constraints: BoxConstraints(minWidth: 92.w, maxWidth: 124.w),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
      decoration: isPaper
          ? BoxDecoration(
              color: AppColors.paperCardBg,
              borderRadius: BorderRadius.circular(14.r),
              border: Border.all(
                color: isReversed
                    ? AppColors.playerBlueBorder
                    : AppColors.playerPinkBorder,
                width: 1.5.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: isReversed
                      ? AppColors.playerBlueExtrusion
                      : AppColors.playerPinkExtrusion,
                  offset: Offset(0, 2.h),
                ),
                BoxShadow(
                  color: AppColors.black.withValues(alpha: 0.08),
                  blurRadius: 3.r,
                  offset: Offset(0, 2.5.h),
                ),
              ],
            )
          : BoxDecoration(
              gradient: LinearGradient(
                colors: gradientColors,
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: AppColors.white.withValues(alpha: 0.8),
                width: 1.5.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: shadowColor.withValues(alpha: 0.6),
                  offset: Offset(0, 2.5.h),
                  blurRadius: 2.r,
                ),
              ],
            ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: isReversed
            ? CrossAxisAlignment.end
            : CrossAxisAlignment.start,
        children: [
          AppText.t2(
            '$score',
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
            color: isPaper
                ? (isReversed
                      ? AppColors.playerBlueDark
                      : AppColors.playerPinkDark)
                : AppColors.white,
            shadows: isPaper
                ? null
                : [
                    Shadow(
                      color: AppColors.black.withValues(alpha: 0.3),
                      offset: Offset(0, 1.5.h),
                      blurRadius: 2.r,
                    ),
                  ],
          ),
          AppText.c1(
            name,
            fontWeight: FontWeight.w700,
            fontSize: 10.sp,
            color: isPaper
                ? AppColors.paperTextDark
                : AppColors.white.withValues(alpha: 0.9),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: isReversed
          ? [
              infoCard,
              SizedBox(width: 6.w),
              avatarWidget,
            ]
          : [
              avatarWidget,
              SizedBox(width: 6.w),
              infoCard,
            ],
    );
  }
}
