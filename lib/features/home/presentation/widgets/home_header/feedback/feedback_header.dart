import 'package:bufopia/components/app_close_button.dart';
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

  static const Color _mossGreen = Color(0xFF3B6E38);
  static const Color _sandBorder = Color(0xFFC9BCA7);

  @override
  Widget build(BuildContext context) {
    final isTabHistory = activeTab == FeedbackActiveTab.history;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // 1. Header Bar: Icon, Tiêu đề, Tag trạng thái, Nút đóng X
        Row(
          children: [
            Container(
              width: 28.r,
              height: 28.r,
              decoration: BoxDecoration(
                color: const Color(0xFFEBF3EA),
                borderRadius: BorderRadius.circular(12.r),
                border: Border.all(color: const Color(0xFFC8DEC6), width: 1.w),
              ),
              child: Icon(
                isTabHistory
                    ? Icons.history_rounded
                    : Icons.chat_bubble_rounded,
                color: _mossGreen,
                size: 16.r,
              ),
            ),
            SizedBox(width: 8.w),
            AppText.t2(
              isTabHistory ? 'LỊCH SỬ TỪ & BÁO LỖI' : 'GÓP Ý CHO BUFOPIA',
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              color: AppColors.grayDark,
            ),

            const Spacer(),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFAF5EC),
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: _sandBorder, width: 1.w),
                  ),
                  child: AppText.c1(
                    isTabHistory ? 'LỊCH SỬ' : 'LẮNG NGHE',
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: AppColors.paperTextMedium,
                  ),
                ),
                SizedBox(width: 6.w),
                AppCloseButton(
                  onTap: onClose ?? () => Navigator.of(context).pop(),
                  size: 24.r,
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 6.h),

        // 2. Navigation Tabs (Tab 1: Lịch sử từ đã chơi, Tab 2: Góp ý chung / Khác)
        Row(
          children: [
            Expanded(
              child: _TabButton(
                isSelected: isTabHistory,
                icon: Icons.history_rounded,
                label: 'Lịch sử từ đã chơi',
                badgeText: '$historyCount',
                onTap: () => onTabChanged(FeedbackActiveTab.history),
              ),
            ),
            SizedBox(width: 10.w),
            Expanded(
              child: _TabButton(
                isSelected: !isTabHistory,
                icon: Icons.auto_awesome_rounded,
                label: 'Góp ý chung / Khác',
                onTap: () => onTabChanged(FeedbackActiveTab.general),
              ),
            ),
          ],
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

  static const Color _mossGreen = Color(0xFF3B6E38);
  static const Color _mossGreenDark = Color(0xFF2A5228);
  static const Color _sandBorder = Color(0xFFC9BCA7);
  static const Color _warmBeige = Color(0xFFF4ECDF);

  @override
  Widget build(BuildContext context) {
    final isSelected = widget.isSelected;

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: 28.h,
        transform: Matrix4.translationValues(0, _isPressed ? 1 : 0, 0),
        decoration: BoxDecoration(
          color: isSelected ? _mossGreen : _warmBeige,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? _mossGreenDark : _sandBorder,
            width: 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: isSelected
                  ? _mossGreenDark.withValues(alpha: 0.3)
                  : _sandBorder.withValues(alpha: 0.35),
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
            SizedBox(width: 6.w),
            Flexible(
              child: AppText.b2(
                widget.label,
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
                color: isSelected ? AppColors.white : AppColors.paperBadgeText,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (widget.badgeText != null) ...[
              SizedBox(width: 6.w),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: isSelected
                      ? const Color(0xFF285025)
                      : const Color(0xFFE4DAD0),
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
