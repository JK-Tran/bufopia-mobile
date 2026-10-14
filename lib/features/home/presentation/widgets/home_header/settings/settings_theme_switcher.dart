import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Switcher chọn giao diện (Paper / Classic) tái sử dụng [AppPillSwitcher]
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
    return AppPillSwitcher<String>(
      items: [
        AppPillSwitcherItem<String>(
          value: 'paper',
          label: 'Paper',
          icon: Container(
            width: 8.w,
            height: 8.w,
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
        ),
        AppPillSwitcherItem<String>(
          value: 'classic',
          label: 'Classic',
          icon: Container(
            width: 8.w,
            height: 8.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: const LinearGradient(
                colors: [
                  AppColors.themePink,
                  AppColors.purple,
                ],
              ),
              border: Border.all(
                color: AppColors.themePurpleBorder,
                width: 1.w,
              ),
            ),
          ),
        ),
      ],
      selectedValue: currentTheme == 'classic' ? 'classic' : 'paper',
      onChanged: onChanged,
      isPaper: isPaper,
      width: 140.w,
    );
  }
}
