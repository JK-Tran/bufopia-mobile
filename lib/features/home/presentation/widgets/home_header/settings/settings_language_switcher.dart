import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Switcher chọn ngôn ngữ (VI / EN / 中文) dạng pill trượt
class SettingsLanguageSwitcher extends StatelessWidget {
  const SettingsLanguageSwitcher({
    required this.currentLanguage,
    required this.onChanged,
    required this.isPaper,
    super.key,
  });

  final String currentLanguage;
  final ValueChanged<String> onChanged;
  final bool isPaper;

  static const _options = [
    ('vi', 'VI'),
    ('en', 'EN'),
    ('zh', '中文'),
  ];

  Alignment _alignment(String lang) {
    switch (lang) {
      case 'zh':
        return Alignment.centerRight;
      case 'en':
        return Alignment.center;
      case 'vi':
      default:
        return Alignment.centerLeft;
    }
  }

  @override
  Widget build(BuildContext context) {
    final trackBg = isPaper ? AppColors.paperSurface : AppColors.pillBg;
    final trackBorder = isPaper ? AppColors.paperBorder : AppColors.pillBorder;
    final sliderBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final sliderBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.blueLight.withValues(alpha: 0.35);

    return Container(
      width: 100.w,
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
            alignment: _alignment(currentLanguage),
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutCubic,
            child: FractionallySizedBox(
              widthFactor: 1 / 3,
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
          // Labels
          Row(
            children: _options.map((opt) {
              final isSelected = currentLanguage == opt.$1;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onChanged(opt.$1),
                  behavior: HitTestBehavior.opaque,
                  child: Center(
                    child: AppText.c1(
                      opt.$2,
                      fontSize: 10.sp,
                      fontWeight:
                          isSelected ? FontWeight.w700 : FontWeight.w600,
                      color: isSelected
                          ? (isPaper
                                ? AppColors.paperTextDark
                                : AppColors.pillTextSelected)
                          : (isPaper
                                ? AppColors.paperTextMuted
                                : AppColors.pillTextUnselected),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
