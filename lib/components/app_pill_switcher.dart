import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Mục lựa chọn cho [AppPillSwitcher]
class AppPillSwitcherItem<T> {
  const AppPillSwitcherItem({
    required this.value,
    required this.label,
    this.icon,
  });

  final T value;
  final String label;
  final Widget? icon;
}

/// Component Switcher dạng thanh pill trượt 3D tái sử dụng toàn ứng dụng
class AppPillSwitcher<T> extends StatelessWidget {
  const AppPillSwitcher({
    required this.items,
    required this.selectedValue,
    required this.onChanged,
    required this.isPaper,
    super.key,
    this.width,
    this.height,
  });

  final List<AppPillSwitcherItem<T>> items;
  final T selectedValue;
  final ValueChanged<T> onChanged;
  final bool isPaper;
  final double? width;
  final double? height;

  Alignment _calculateAlignment(int index, int total) {
    if (total <= 1) return Alignment.center;
    // Map index 0 -> -1.0 (trái), index total-1 -> +1.0 (phải)
    final x = -1.0 + (2.0 * index / (total - 1));
    return Alignment(x, 0);
  }

  @override
  Widget build(BuildContext context) {
    final selectedIndex = items.indexWhere((it) => it.value == selectedValue);
    final activeIndex = selectedIndex >= 0 ? selectedIndex : 0;
    final total = items.length;

    final trackBg = isPaper ? AppColors.paperSurface : AppColors.pillBg;
    final trackBorder = isPaper ? AppColors.paperBorder : AppColors.pillBorder;
    final sliderBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final sliderBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.blueLight.withValues(alpha: 0.35);

    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final resolvedWidth = width ??
        (total == 2
            ? (isLandscape ? 136.0 : 140.w)
            : (isLandscape ? 126.0 : 126.w));
    final resolvedHeight = height ?? (isLandscape ? 28.0 : 28.h);
    final pad = isLandscape ? const EdgeInsets.all(3) : EdgeInsets.all(4.w);

    return Container(
      width: resolvedWidth,
      height: resolvedHeight,
      padding: pad,
      decoration: BoxDecoration(
        color: trackBg,
        borderRadius: BorderRadius.circular(isLandscape ? 8 : 8.w),
        border: Border.all(
          color: trackBorder,
          width: isLandscape ? 1 : 1.w,
        ),
      ),
      child: Stack(
        children: [
          // Slider trượt nổi 3D
          if (total > 0)
            AnimatedAlign(
              alignment: _calculateAlignment(activeIndex, total),
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOutCubic,
              child: FractionallySizedBox(
                widthFactor: 1 / total,
                heightFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: sliderBg,
                    borderRadius: BorderRadius.circular(6.w),
                    border: Border.all(color: sliderBorder, width: 1.w),
                    boxShadow: isPaper
                        ? [
                            BoxShadow(
                              color: AppColors.paperExtrusion,
                              offset: Offset(0, 1.5.h),
                            ),
                          ]
                        : [
                            BoxShadow(
                              color: AppColors.black.withValues(alpha: 0.1),
                              blurRadius: 3.w,
                              offset: Offset(0, 1.h),
                            ),
                          ],
                  ),
                ),
              ),
            ),

          // Các nhãn lựa chọn
          Row(
            children: items.map((item) {
              final isSelected = item.value == selectedValue;
              return Expanded(
                child: GestureDetector(
                  onTap: () => onChanged(item.value),
                  behavior: HitTestBehavior.opaque,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (item.icon != null) ...[
                          item.icon!,
                          SizedBox(width: 4.w),
                        ],
                        Flexible(
                          child: AppText.c1(
                            item.label,
                            fontSize: isLandscape ? 10.5 : 10.sp,
                            fontWeight: isSelected ? FontWeight.w700 : null,
                            color: isSelected
                                ? (isPaper
                                      ? AppColors.paperTextDark
                                      : AppColors.pillTextSelected)
                                : (isPaper
                                      ? AppColors.paperTextMuted
                                      : AppColors.pillTextUnselected),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
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
