import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

/// Thanh tiêu đề trên cùng màn hình ngang (Landscape)
class LandscapeTopBar extends StatelessWidget {
  const LandscapeTopBar({
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
      height: 38,
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
                size: 36,
                iconSize: 18,
                iconColor: isPaper
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

          // Huy hiệu Vòng đấu (Chính giữa)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: isPaper
                ? BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      color: AppColors.paperBorder,
                      width: 1.5,
                    ),
                    boxShadow: [
                      const BoxShadow(
                        color: AppColors.paperExtrusion,
                        offset: Offset(0, 2),
                      ),
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.08),
                        offset: const Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  )
                : BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.playerBlueDark, AppColors.blueDeep],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      color: AppColors.playerBlueLight,
                      width: 1.5,
                    ),
                    boxShadow: [
                      const BoxShadow(
                        color: AppColors.grayDark,
                        offset: Offset(0, 2.5),
                      ),
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.2),
                        offset: const Offset(0, 3),
                        blurRadius: 4,
                      ),
                    ],
                  ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.emoji_events_rounded,
                  size: 16,
                  color: isPaper ? AppColors.orangeDark : AppColors.gold,
                ),
                const SizedBox(width: 6),
                AppText.t3(
                  'VÒNG $currentRound / $totalRounds',
                  fontSize: 12,
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
