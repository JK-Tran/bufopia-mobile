import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Huy hiệu đếm ngược thời gian (Timer Item)
/// Phong cách 3D nổi khối, hỗ trợ Paper & Classic theme:
/// - Bình thường: Viền xanh lá
/// - Sắp hết giờ (<=30s): Chuyển sang cam/vàng
/// - Nguy cấp (<=10s): Chuyển sang đỏ và rung nhịp (pulse animation)
class WordGuessTimerItem extends StatefulWidget {
  const WordGuessTimerItem({
    required this.secondsLeft,
    required this.isPaperTheme,
    super.key,
  });

  final int secondsLeft;
  final bool isPaperTheme;

  @override
  State<WordGuessTimerItem> createState() => _WordGuessTimerItemState();
}

class _WordGuessTimerItemState extends State<WordGuessTimerItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _pulseAnimation = Tween<double>(begin: 1, end: 1.08).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void didUpdateWidget(covariant WordGuessTimerItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.secondsLeft <= 10 && !_pulseController.isAnimating) {
      _pulseController.repeat(reverse: true);
    } else if (widget.secondsLeft > 10 && _pulseController.isAnimating) {
      _pulseController
        ..stop()
        ..reset();
    }
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  Color _getColor() {
    if (widget.secondsLeft <= 10) {
      return widget.isPaperTheme ? AppColors.paperStreakFlame : AppColors.error;
    }
    if (widget.secondsLeft <= 30) {
      return widget.isPaperTheme
          ? AppColors.paperAmberBadgeText
          : AppColors.warning;
    }
    return widget.isPaperTheme ? AppColors.paperGreenDark : AppColors.success;
  }

  @override
  Widget build(BuildContext context) {
    final color = _getColor();
    final timeStr = StringUtils.formatDuration(widget.secondsLeft);

    return ScaleTransition(
      scale: widget.secondsLeft <= 10
          ? _pulseAnimation
          : const AlwaysStoppedAnimation(1),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
        decoration: BoxDecoration(
          color: widget.isPaperTheme ? AppColors.paperSurface : AppColors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: color,
            width: 1.5.w,
          ),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.15),
              blurRadius: 6.r,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.timer_outlined,
              size: 16.r,
              color: color,
            ),
            SizedBox(width: 4.w),
            AppText.c1(
              timeStr,
              color: color,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
