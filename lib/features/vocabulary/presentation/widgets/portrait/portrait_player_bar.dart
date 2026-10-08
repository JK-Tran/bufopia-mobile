import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh thông tin đối đầu 2 người chơi (P1 & P2) ở màn hình dọc
class PortraitPlayerBar extends StatelessWidget {
  const PortraitPlayerBar({
    required this.player1Name,
    required this.player1Avatar,
    required this.player1Score,
    required this.player2Name,
    required this.player2Avatar,
    required this.player2Score,
    required this.isPaper,
    super.key,
  });

  final String player1Name;
  final String player1Avatar;
  final int player1Score;
  final String player2Name;
  final String player2Avatar;
  final int player2Score;
  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Người chơi 1 (Bên trái - Hồng)
        Expanded(
          child: _PlayerPill(
            isPlayer1: true,
            name: player1Name,
            avatarPath: player1Avatar,
            score: player1Score,
            isPaper: isPaper,
          ),
        ),

        SizedBox(width: 12.w),

        // Người chơi 2 (Bên phải - Xanh)
        Expanded(
          child: _PlayerPill(
            isPlayer1: false,
            name: player2Name,
            avatarPath: player2Avatar,
            score: player2Score,
            isPaper: isPaper,
          ),
        ),
      ],
    );
  }
}

class _PlayerPill extends StatelessWidget {
  const _PlayerPill({
    required this.isPlayer1,
    required this.name,
    required this.avatarPath,
    required this.score,
    required this.isPaper,
  });

  final bool isPlayer1;
  final String name;
  final String avatarPath;
  final int score;
  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    final avatarBorderColor = isPaper
        ? (isPlayer1 ? AppColors.playerPinkBorder : AppColors.playerBlueBorder)
        : AppColors.white;

    final avatar = Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 40.r,
          height: 40.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: avatarBorderColor, width: 2.w),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: isPaper ? 0.05 : 0.2),
                offset: Offset(0, 2.h),
                blurRadius: 3.r,
              ),
            ],
          ),
          child: ClipOval(
            child: AppAvatar(
              avatarUrl: avatarPath,
              size: 40.r,
            ),
          ),
        ),
        Positioned(
          top: -6.h,
          left: 10.w,
          child: Icon(
            Icons.military_tech_rounded,
            size: 16.r,
            color: AppColors.gold,
          ),
        ),
      ],
    );

    final containerDecoration = isPaper
        ? BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(
              color: AppColors.paperBorder,
              width: 1.5.w,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 2.5.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.05),
                offset: Offset(0, 3.h),
                blurRadius: 4.r,
              ),
            ],
          )
        : BoxDecoration(
            gradient: LinearGradient(
              colors: isPlayer1
                  ? const [AppColors.playerPinkLight, AppColors.playerPinkDark]
                  : const [AppColors.playerBlueLight, AppColors.playerBlueDark],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(22.r),
            border: Border.all(
              color: isPlayer1
                  ? AppColors.playerPinkBorder
                  : AppColors.playerBlueBorder,
              width: 1.5.w,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.16),
                offset: Offset(0, 2.5.h),
                blurRadius: 3.r,
              ),
            ],
          );

    final nameColor = isPaper ? AppColors.paperTextMedium : AppColors.white;
    final scoreColor = isPaper
        ? (isPlayer1 ? AppColors.playerPinkDark : AppColors.playerBlueDark)
        : AppColors.white;

    final infoColumn = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: isPlayer1
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      children: [
        AppText.t2(
          '$score',
          fontSize: 20.sp,
          fontWeight: FontWeight.w700,
          color: scoreColor,
        ),
        SizedBox(height: 1.h),
        FittedBox(
          fit: BoxFit.scaleDown,
          alignment: isPlayer1 ? Alignment.centerLeft : Alignment.centerRight,
          child: AppText.c1(
            name,
            fontSize: 12.sp,
            fontWeight: FontWeight.w600,
            color: nameColor,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );

    return Container(
      height: 60.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      decoration: containerDecoration,
      child: Row(
        children: isPlayer1
            ? [
                avatar,
                SizedBox(width: 8.w),
                Expanded(child: infoColumn),
              ]
            : [
                Expanded(child: infoColumn),
                SizedBox(width: 8.w),
                avatar,
              ],
      ),
    );
  }
}
