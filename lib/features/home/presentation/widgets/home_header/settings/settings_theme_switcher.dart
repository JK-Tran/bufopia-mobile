import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Switcher chọn giao diện (Paper / Classic) dạng pill trượt
class SettingsThemeSwitcher extends StatelessWidget {
  const SettingsThemeSwitcher({
    required this.currentTheme,
    required this.onChanged,
    required this.isPaper,
    super.key,
  });

  final String currentTheme;
  final ValueChanged<String> onChanged;
  final bool isPaper;

  @override
  Widget build(BuildContext context) {
    final isPaperSelected = currentTheme != 'classic';

    final trackBg = isPaper ? AppColors.paperSurface : AppColors.pillBg;
    final trackBorder = isPaper ? AppColors.paperBorder : AppColors.pillBorder;
    final sliderBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final sliderBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.blueLight.withValues(alpha: 0.35);

    return Container(
      width: 130.w,
      height: 22.h,
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: trackBg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: trackBorder, width: 1.w),
      ),
      child: Stack(
        children: [
          // Slider trượt
          AnimatedAlign(
            alignment: isPaperSelected
                ? Alignment.centerLeft
                : Alignment.centerRight,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutCubic,
            child: FractionallySizedBox(
              widthFactor: 0.5,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: sliderBg,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: sliderBorder, width: 1.w),
                  boxShadow: isPaper
                      ? [
                          BoxShadow(
                            color: AppColors.paperExtrusion,
                            offset: Offset(0, 1.h),
                          ),
                        ]
                      : [
                          BoxShadow(
                            color: AppColors.black.withValues(alpha: 0.08),
                            blurRadius: 2.r,
                            offset: Offset(0, 1.h),
                          ),
                        ],
                ),
              ),
            ),
          ),
          // Labels: Paper & Classic
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => onChanged('paper'),
                  behavior: HitTestBehavior.opaque,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 8.r,
                          height: 8.r,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              colors: [
                                AppColors.paperGreenLight,
                                AppColors.green,
                              ],
                            ),
                            border: Border.all(
                              color: AppColors.paperGreenBorder,
                              width: 1.w,
                            ),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        AppText.c1(
                          'Paper',
                          fontSize: 10.sp,
                          fontWeight: isPaperSelected
                              ? FontWeight.w700
                              : FontWeight.w600,
                          color: isPaperSelected
                              ? AppColors.paperTextDark
                              : (isPaper
                                    ? AppColors.paperTextMuted
                                    : AppColors.pillTextUnselected),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => onChanged('classic'),
                  behavior: HitTestBehavior.opaque,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 8.r,
                          height: 8.r,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: const LinearGradient(
                              colors: [AppColors.themePink, AppColors.purple],
                            ),
                            border: Border.all(
                              color: AppColors.themePurpleBorder,
                              width: 1.w,
                            ),
                          ),
                        ),
                        SizedBox(width: 4.w),
                        AppText.c1(
                          'Classic',
                          fontSize: 10.sp,
                          fontWeight: !isPaperSelected
                              ? FontWeight.w700
                              : FontWeight.w600,
                          color: !isPaperSelected
                              ? (isPaper
                                    ? AppColors.paperTextDark
                                    : AppColors.pillTextSelected)
                              : (isPaper
                                    ? AppColors.paperTextMuted
                                    : AppColors.pillTextUnselected),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
