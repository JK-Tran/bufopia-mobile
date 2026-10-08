import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/data/models/legal_policies_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Tab bar 4 ô chọn chính sách – dùng Stack + AnimatedAlign (slider)
/// giống _LanguageSelector / _ThemeSelector trong HomeSettingsDialog.
/// Slider thật sự trượt ngang mà không nhấp nháy.
class PrivacyTabBar extends StatelessWidget {
  const PrivacyTabBar({
    required this.selectedIndex,
    required this.onTabSelected,
    required this.isClassic,
    super.key,
  });

  final int selectedIndex;
  final ValueChanged<int> onTabSelected;
  final bool isClassic;

  /// Chuyển index sang Alignment.x trong [-1, +1] (giống _LanguageSelector)
  Alignment _toAlignment(int index, int total) {
    if (total <= 1) return Alignment.centerLeft;
    final step = 2.0 / (total - 1);
    return Alignment(-1.0 + step * index, 0);
  }

  @override
  Widget build(BuildContext context) {
    const tabs = LegalPoliciesData.tabs;
    final total = tabs.length;

    final barBg = isClassic
        ? AppColors.lightBackground
        : AppColors.paperBadgeBg;
    final barBorder = isClassic
        ? AppColors.grayLight
        : AppColors.paperBorder;
    final sliderBg = isClassic ? AppColors.white : AppColors.paperCardBg;
    final sliderBorder = isClassic
        ? AppColors.grayExtrusion
        : AppColors.paperBorder;

    return Container(
      height: 52.h,
      padding: EdgeInsets.all(4.r),
      decoration: BoxDecoration(
        color: barBg,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: barBorder, width: 1.w),
      ),
      child: Stack(
        children: [
          // ── Slider trượt mượt mà (AnimatedAlign giống _LanguageSelector) ──
          AnimatedAlign(
            alignment: _toAlignment(selectedIndex, total),
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutCubic,
            child: FractionallySizedBox(
              widthFactor: 1 / total,
              heightFactor: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: sliderBg,
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: sliderBorder, width: 1.w),
                  boxShadow: isClassic
                      ? [
                          BoxShadow(
                            color: AppColors.black.withValues(alpha: 0.08),
                            blurRadius: 3.r,
                            offset: Offset(0, 1.h),
                          ),
                        ]
                      : [
                          BoxShadow(
                            color: AppColors.paperExtrusion,
                            offset: Offset(0, 1.h),
                          ),
                        ],
                ),
              ),
            ),
          ),

          // ── Label + icon: chỉ đổi màu, KHÔNG thay đổi layout ─────────────
          Row(
            children: List.generate(
              total,
              (i) => Expanded(
                child: GestureDetector(
                  onTap: () => onTabSelected(i),
                  behavior: HitTestBehavior.opaque,
                  child: _PrivacyTabLabel(
                    tab: tabs[i],
                    isSelected: selectedIndex == i,
                    isClassic: isClassic,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Label đơn giản (chỉ đổi màu, KHÔNG layout/decoration) ──────────────────

class _PrivacyTabLabel extends StatelessWidget {
  const _PrivacyTabLabel({
    required this.tab,
    required this.isSelected,
    required this.isClassic,
  });

  final PolicyTabItem tab;
  final bool isSelected;
  final bool isClassic;

  @override
  Widget build(BuildContext context) {
    final selectedTextColor = isClassic
        ? AppColors.grayDark
        : AppColors.paperTextDark;
    final selectedIconColor = isClassic
        ? AppColors.classicButtonEmerald
        : AppColors.paperGreen;
    final unselectedTextColor = isClassic
        ? AppColors.grayMedium
        : AppColors.paperTextMuted;
    final unselectedIconColor = isClassic
        ? AppColors.darkOnSurfaceVariant
        : AppColors.paperTextMuted;

    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 3.h),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                tab.tabIcon,
                size: 16.r,
                color: isSelected ? selectedIconColor : unselectedIconColor,
              ),
              SizedBox(height: 3.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: AppText.c1(
                  tab.tabLabel,
                  fontSize: 10.sp,
                  fontWeight: isSelected ? FontWeight.w700 : null,
                  color: isSelected ? selectedTextColor : unselectedTextColor,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
