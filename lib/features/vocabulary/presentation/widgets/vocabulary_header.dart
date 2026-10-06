import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh điều hướng trên cùng trong Quick Battle (Back, Trang chủ, Chơi lại)
class VocabularyHeader extends StatelessWidget {
  const VocabularyHeader({
    super.key,
    this.onBackPressed,
  });

  final VoidCallback? onBackPressed;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onBackPressed != null)
                AppIconButton(
                  icon: Icons.arrow_back_rounded,
                  backgroundColor: isPaper
                      ? AppColors.paperCardBg
                      : AppColors.white,
                  iconColor: isPaper
                      ? AppColors.paperHeaderIcon
                      : AppColors.purple,
                  borderColor: isPaper
                      ? AppColors.paperBorder
                      : AppColors.grayLight,
                  extrusionColor: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.grayExtrusion,
                  size: 34.r,
                  iconSize: 18.r,
                  onPressed: onBackPressed,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
