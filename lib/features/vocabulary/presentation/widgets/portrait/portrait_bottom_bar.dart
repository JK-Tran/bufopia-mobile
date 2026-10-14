import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh theo dõi trực tiếp trạng thái chọn đáp án của Bạn và Đối thủ
class PortraitBottomBar extends StatelessWidget {
  const PortraitBottomBar({
    required this.player1Avatar,
    required this.player2Avatar,
    required this.chosenWordP1,
    required this.isP1Correct,
    required this.chosenWordP2,
    required this.isP2Correct,
    required this.isPaper,
    super.key,
  });

  final String player1Avatar;
  final String player2Avatar;
  final String? chosenWordP1;
  final bool? isP1Correct;
  final String? chosenWordP2;
  final bool? isP2Correct;
  final bool isPaper;

  Widget _buildMiniAvatar({
    required String avatarPath,
    required bool isPlayer1,
  }) {
    final borderColor = isPaper
        ? (isPlayer1 ? AppColors.playerPinkBorder : AppColors.playerBlueBorder)
        : (isPlayer1 ? AppColors.playerPink : AppColors.playerBlue);

    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 28.r,
          height: 28.r,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: borderColor,
              width: 1.5.w,
            ),
          ),
          child: ClipOval(
            child: AppAvatar(
              avatarUrl: avatarPath,
              size: 28.r,
            ),
          ),
        ),
        Positioned(
          top: -5.h,
          left: 6.w,
          child: Icon(
            Icons.military_tech_rounded,
            size: 12.r,
            color: AppColors.gold,
          ),
        ),
      ],
    );
  }

  Color _getP1TextColor() {
    if (chosenWordP1 == null) {
      return isPaper ? AppColors.paperTextMuted : AppColors.grayMedium;
    }
    if (isP1Correct == true) {
      return isPaper ? AppColors.paperGreen : AppColors.green;
    }
    if (isP1Correct == false) {
      return AppColors.red;
    }
    return isPaper ? AppColors.playerPinkDark : AppColors.white;
  }

  Color _getP2TextColor() {
    if (chosenWordP2 == null) {
      return isPaper ? AppColors.paperTextMuted : AppColors.grayMedium;
    }
    if (isP2Correct == true) {
      return isPaper ? AppColors.paperGreen : AppColors.green;
    }
    if (isP2Correct == false) {
      return AppColors.red;
    }
    return isPaper ? AppColors.playerBlueDark : AppColors.cyan;
  }

  @override
  Widget build(BuildContext context) {
    final barDecoration = isPaper
        ? BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(26.r),
            border: Border.all(
              color: AppColors.paperBorder,
              width: 1.5.w,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 3.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.06),
                offset: Offset(0, 4.h),
                blurRadius: 6.r,
              ),
            ],
          )
        : BoxDecoration(
            color: AppColors.grayDark,
            borderRadius: BorderRadius.circular(26.r),
            border: Border.all(
              color: AppColors.white.withValues(alpha: 0.18),
              width: 1.5.w,
            ),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.22),
                offset: Offset(0, 4.h),
                blurRadius: 8.r,
              ),
            ],
          );

    return Container(
      height: 52.h,
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: barDecoration,
      child: Row(
        children: [
          // Bên BẠN
          Expanded(
            child: Row(
              children: [
                _buildMiniAvatar(
                  avatarPath: player1Avatar,
                  isPlayer1: true,
                ),
                SizedBox(width: 8.w),
                AppText.c1(
                  'Bạn: ',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: isPaper ? AppColors.paperTextDark : AppColors.white,
                ),
                Expanded(
                  child: AppText.c1(
                    chosenWordP1 ?? 'Đang chọn...',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: _getP1TextColor(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),

          // Đường kẻ dọc phân cách
          Container(
            width: 1.w,
            height: 24.h,
            color: isPaper
                ? AppColors.paperBorder
                : AppColors.white.withValues(alpha: 0.2),
          ),

          SizedBox(width: 10.w),

          // Bên ĐỐI THỦ
          Expanded(
            child: Row(
              children: [
                _buildMiniAvatar(
                  avatarPath: player2Avatar,
                  isPlayer1: false,
                ),
                SizedBox(width: 8.w),
                AppText.c1(
                  'Đối thủ: ',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: isPaper ? AppColors.paperTextDark : AppColors.white,
                ),
                Expanded(
                  child: AppText.c1(
                    chosenWordP2 ?? 'Đang nghĩ...',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: _getP2TextColor(),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
