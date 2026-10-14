import 'package:bufopia/components/app_dotted.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Một dòng cài đặt: [leadingIcon?] title + subtitle | action widget
/// Dùng AppDotted ở trên/dưới phân cách các mục.
class SettingsItem extends StatelessWidget {
  const SettingsItem({
    required this.title,
    required this.subtitle,
    required this.action,
    this.leadingIcon,
    this.showTopDivider = true,
    super.key,
  });

  final String title;
  final String subtitle;
  final Widget action;
  final Widget? leadingIcon;
  final bool showTopDivider;

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (showTopDivider) const AppDotted(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: isLandscape ? 4 : 6.h),
          child: Row(
            children: [
              if (leadingIcon != null) ...[
                leadingIcon!,
                SizedBox(width: isLandscape ? 6 : 6.w),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.t3(
                      title,
                      fontSize: isLandscape ? 12 : 12.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.paperSectionTitle,
                    ),
                    SizedBox(height: isLandscape ? 2 : 2.h),
                    AppText.c1(
                      subtitle,
                      fontSize: isLandscape ? 10 : 10.sp,
                      color: AppColors.pillTextUnselected,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(width: isLandscape ? 8 : 8.w),
              action,
            ],
          ),
        ),
      ],
    );
  }
}
