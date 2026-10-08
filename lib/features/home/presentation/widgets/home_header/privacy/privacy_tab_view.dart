import 'package:bufopia/components/app_dotted.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/data/models/legal_policies_data.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/privacy/privacy_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Nội dung scroll của tab đang chọn:
/// Intro → divider chấm → danh sách [PrivacyContent]
class PrivacyTabView extends StatelessWidget {
  const PrivacyTabView({
    required this.tab,
    required this.isClassic,
    super.key,
  });

  final PolicyTabItem tab;
  final bool isClassic;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _PrivacyIntro(tab: tab, isClassic: isClassic),
        SizedBox(height: 6.h),
        const AppDotted(),
        SizedBox(height: 6.h),
        ...tab.sections.map(
          (s) => Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: PrivacyContent(section: s, isClassic: isClassic),
          ),
        ),
      ],
    );
  }
}

// ── Intro block (private) ──────────────────────────────

class _PrivacyIntro extends StatelessWidget {
  const _PrivacyIntro({required this.tab, required this.isClassic});

  final PolicyTabItem tab;
  final bool isClassic;

  @override
  Widget build(BuildContext context) {
    final bg = isClassic
        ? AppColors.lightBackground
        : AppColors.paperSurface;
    final border = isClassic ? AppColors.grayLight : AppColors.paperBorder;
    final iconCircleBg = isClassic
        ? AppColors.topicEasyBg
        : AppColors.paperSurfaceWarm;
    final iconCircleBorder = isClassic
        ? AppColors.modeBotBorder
        : AppColors.paperGreenBorder;
    final iconColor = isClassic
        ? AppColors.classicButtonEmerald
        : AppColors.paperGreen;
    final titleColor = isClassic
        ? AppColors.grayDark
        : AppColors.paperTextDark;
    final introColor = isClassic
        ? AppColors.grayMedium
        : AppColors.paperTextMedium;

    return Container(
      padding: EdgeInsets.all(10.r),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: border, width: 1.w),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32.r,
            height: 32.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconCircleBg,
              border: Border.all(color: iconCircleBorder, width: 1.w),
            ),
            child: Center(
              child: Icon(tab.titleIcon, color: iconColor, size: 18.r),
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: AppText.b2(
                        tab.title,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w700,
                        color: titleColor,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: isClassic
                            ? AppColors.topicEasyBg
                            : AppColors.paperBadgeBg,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                          color: isClassic
                              ? AppColors.modeBotBorder
                              : AppColors.paperBadgeBorder,
                          width: 1.w,
                        ),
                      ),
                      child: AppText.c1(
                        tab.tag,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: isClassic
                            ? AppColors.modeBotButtonExtrusion
                            : AppColors.paperBadgeText,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                AppText.c1(
                  tab.intro,
                  fontSize: 10.sp,
                  color: introColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
