import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh tiêu đề trên cùng: Nút quay lại và Huy hiệu vòng đấu
class PortraitTopBar extends StatelessWidget {
  const PortraitTopBar({
    required this.currentRound,
    required this.totalRounds,
    required this.isPaper,
    this.onBackPressed,
    super.key,
  });

  final int currentRound;
  final int totalRounds;
  final bool isPaper;
  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Nút Quay lại (Góc trái)
          if (onBackPressed != null)
            Align(
              alignment: Alignment.centerLeft,
              child: AppIconButton(
                icon: Icons.arrow_back_ios_new_rounded,
                tooltip: 'Rời trận',
                size: 38.r,
                iconSize: 18.r,
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
                onPressed: onBackPressed,
              ),
            ),

          // Huy hiệu Vòng đấu (Chính giữa)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
            decoration: isPaper
                ? BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: AppColors.paperBorder,
                      width: 1.5.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.paperExtrusion,
                        offset: Offset(0, 2.h),
                      ),
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.08),
                        offset: Offset(0, 2.h),
                        blurRadius: 4.r,
                      ),
                    ],
                  )
                : BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.playerBlueDark, AppColors.blueDeep],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(22.r),
                    border: Border.all(
                      color: AppColors.playerBlueLight,
                      width: 1.5.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.grayDark,
                        offset: Offset(0, 2.5.h),
                      ),
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.2),
                        offset: Offset(0, 3.h),
                        blurRadius: 4.r,
                      ),
                    ],
                  ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.emoji_events_rounded,
                  size: 16.r,
                  color: isPaper ? AppColors.orangeDark : AppColors.gold,
                ),
                SizedBox(width: 6.w),
                AppText.t3(
                  'VÒNG $currentRound / $totalRounds',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  color: isPaper ? AppColors.paperTextDark : AppColors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
