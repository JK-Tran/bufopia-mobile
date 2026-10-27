import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/practice/presentation/review/widgets/review_header.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ReviewTopBar extends StatelessWidget {
  const ReviewTopBar({
    required this.isPaperTheme,
    required this.onBackPressed,
    required this.onSettingsPressed,
    super.key,
  });

  final bool isPaperTheme;
  final VoidCallback onBackPressed;
  final VoidCallback onSettingsPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppIconButton(
          icon: Icons.arrow_back_ios_new_rounded,
          tooltip: context.l10n.back,
          size: 36.r,
          iconSize: 18.r,
          backgroundColor: isPaperTheme
              ? AppColors.paperCardBg
              : AppColors.white,
          iconColor: isPaperTheme
              ? AppColors.paperTextDark
              : AppColors.grayDark,
          borderColor: isPaperTheme
              ? AppColors.paperBorder
              : AppColors.grayLight,
          extrusionColor: isPaperTheme
              ? AppColors.paperExtrusion
              : AppColors.grayExtrusion,
          extrusionHeight: 2.5,
          onPressed: onBackPressed,
        ),
        Expanded(
          child: Center(
            child: ReviewHeader(isPaperTheme: isPaperTheme),
          ),
        ),
        AppIconButton(
          icon: Icons.settings_rounded,
          tooltip: context.l10n.settings,
          size: 36.r,
          iconSize: 18.r,
          backgroundColor: isPaperTheme
              ? AppColors.paperCardBg
              : AppColors.white,
          iconColor: isPaperTheme ? AppColors.paperHeaderIcon : AppColors.sky,
          borderColor: isPaperTheme
              ? AppColors.paperBorder
              : AppColors.grayLight,
          extrusionColor: isPaperTheme
              ? AppColors.paperExtrusion
              : AppColors.grayExtrusion,
          extrusionHeight: 2.5,
          onPressed: onSettingsPressed,
        ),
      ],
    );
  }
}
