import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum FeedbackActiveTab { history, general }

class FeedbackHeader extends StatelessWidget {
  const FeedbackHeader({
    required this.activeTab,
    required this.onTabChanged,
    required this.historyCount,
    this.onClose,
    super.key,
  });

  final FeedbackActiveTab activeTab;
  final ValueChanged<FeedbackActiveTab> onTabChanged;
  final int historyCount;
  final VoidCallback? onClose;

  @override
  Widget build(BuildContext context) {
    final isTabHistory = activeTab == FeedbackActiveTab.history;

    return Row(
      children: [
        Expanded(
          flex: 12,
          child: _TabButton(
            isSelected: isTabHistory,
            icon: Icons.history_rounded,
            label: 'Lịch sử từ đã chơi',
            badgeText: '$historyCount',
            onTap: () => onTabChanged(FeedbackActiveTab.history),
          ),
        ),
        SizedBox(width: 6.w),
        Expanded(
          flex: 10,
          child: _TabButton(
            isSelected: !isTabHistory,
            icon: Icons.auto_awesome_rounded,
            label: 'Góp ý chung / Khác',
            onTap: () => onTabChanged(FeedbackActiveTab.general),
          ),
        ),
      ],
    );
  }
}

class _TabButton extends StatefulWidget {
  const _TabButton({
    required this.isSelected,
    required this.icon,
    required this.label,
    required this.onTap,
    this.badgeText,
  });

  final bool isSelected;
  final IconData icon;
  final String label;
  final String? badgeText;
  final VoidCallback onTap;

  @override
  State<_TabButton> createState() => _TabButtonState();
}

class _TabButtonState extends State<_TabButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final isSelected = widget.isSelected;

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      child: AnimatedContainer(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        duration: const Duration(milliseconds: 100),
        height: 30.h,
        transform: Matrix4.translationValues(0, _isPressed ? 1 : 0, 0),
        decoration: BoxDecoration(
          color: isSelected
              ? AppColors.feedbackMossGreen
              : AppColors.feedbackWarmBeige,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected
                ? AppColors.feedbackMossGreenDark
                : AppColors.feedbackSandBorder,
            width: 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: isSelected
                  ? AppColors.feedbackMossGreenDark.withValues(alpha: 0.3)
                  : AppColors.feedbackSandBorder.withValues(alpha: 0.35),
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 14.r,
              color: isSelected ? AppColors.white : AppColors.paperBadgeText,
            ),
            SizedBox(width: 4.w),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: AppText.b2(
                  widget.label,
                  fontWeight: FontWeight.w700,
                  fontSize: 12.sp,
                  color: isSelected
                      ? AppColors.white
                      : AppColors.paperBadgeText,
                  maxLines: 1,
                ),
              ),
            ),
            if (widget.badgeText != null) ...[
              SizedBox(width: 4.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? AppColors.paperGreenDark
                      : AppColors.paperBadgeBg,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: AppText.c1(
                  widget.badgeText!,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: isSelected
                      ? AppColors.white
                      : AppColors.paperBadgeText,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
