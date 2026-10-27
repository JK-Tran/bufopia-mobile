import 'package:bufopia/components/app_paper_clip.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thẻ chủ đề từ vựng phong cách kẹp ghim 3D chuẩn Web
class TopicItem extends StatefulWidget {
  const TopicItem({
    required this.topic,
    required this.isSelected,
    required this.onTap,
    this.isPaperTheme,
    super.key,
  });

  final Topic topic;
  final bool isSelected;
  final VoidCallback onTap;
  final bool? isPaperTheme;

  @override
  State<TopicItem> createState() => _TopicItemState();
}

class _TopicItemState extends State<TopicItem> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final isPaper =
        widget.isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: () {
        SoundManager.playClick();
        widget.onTap();
      },
      child: AnimatedScale(
        scale: _isPressed ? 0.98 : 1.0,
        duration: const Duration(milliseconds: 90),
        child: AnimatedSlide(
          offset: Offset(0, _isPressed ? 0.02 : 0),
          duration: const Duration(milliseconds: 90),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              _buildCard(isPaper),
              // Kẹp ghim trang trí 2 bên
              Positioned(
                top: -8.h,
                left: 18.w,
                child: AppPaperClip(width: 12.w, height: 26.h),
              ),
              Positioned(
                top: -8.h,
                right: 18.w,
                child: AppPaperClip(width: 12.w, height: 26.h),
              ),
              // Huy hiệu "Đã chọn"
              if (widget.isSelected)
                Positioned(
                  top: -5.h,
                  left: -2.w,
                  child: _buildSelectedBadge(isPaper),
                ),
            ],
          ),
        ),
      ),
    );
  }

  /// Khung thân thẻ với hiệu ứng nổi 3D và viền chủ đề
  Widget _buildCard(bool isPaper) {
    final borderColor = widget.isSelected
        ? (isPaper ? AppColors.paperGreen : AppColors.modeBotButton)
        : (isPaper ? AppColors.paperBorder : AppColors.peach);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 90),
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isPaper
              ? [
                  AppColors.paperCardGradientStart,
                  AppColors.paperCardGradientEnd,
                ]
              : [AppColors.white, AppColors.woodParchmentLight],
        ),
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: borderColor,
          width: widget.isSelected ? 2.5.w : (isPaper ? 1.5.w : 2.w),
        ),
        boxShadow: _buildShadows(isPaper),
      ),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: _buildIllustration(),
            ),
          ),

          _buildInfo(isPaper),
          SizedBox(height: 10.h),
          _buildBadges(isPaper),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  /// Ảnh minh họa hoặc icon ngẫu nhiên nếu là tự động
  Widget _buildIllustration() {
    if (widget.topic.isAuto) {
      return Container(
        width: 52.r,
        height: 52.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColors.orangeLight,
              AppColors.orange,
              AppColors.orangeDark,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.orangeDeep.withValues(alpha: 0.35),
              offset: Offset(0, 2.h),
              blurRadius: 4.r,
            ),
          ],
        ),
        child: Icon(
          Icons.auto_awesome_rounded,
          size: 28.r,
          color: AppColors.white,
        ),
      );
    }

    return Image.asset(
      widget.topic.imagePath ?? '',
      height: 100.h,
      fit: BoxFit.contain,
      errorBuilder: (_, _, _) => Icon(
        Icons.menu_book_rounded,
        size: 36.r,
        color: AppColors.brownDark,
      ),
    );
  }

  /// Tên và phụ đề của chủ đề
  Widget _buildInfo(bool isPaper) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: AppText.t3(
            widget.topic.displayName,
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 4.h),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: AppText.c1(
            widget.topic.subtitle,
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  /// Hàng badge dưới cùng: Độ khó và Số lượng từ
  Widget _buildBadges(bool isPaper) {
    final displayDiff = widget.topic.displayDifficulty;
    final style = _getDifficultyStyle(displayDiff, isPaper);
    final countText = widget.topic.displayWordCount;

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Badge độ khó
          if (displayDiff.isNotEmpty)
            _buildPill(
              bgColor: style.bg,
              borderColor: style.border,
              icon: style.icon,
              label: displayDiff,
              textColor: style.text,
              shadowColor: isPaper
                  ? style.border.withValues(alpha: 0.25)
                  : style.border.withValues(alpha: 0.4),
            ),
          SizedBox(width: 4.w),
          // Badge số từ
          _buildPill(
            bgColor: isPaper ? AppColors.paperCardBg : AppColors.white,
            borderColor: isPaper ? AppColors.paperBorder : AppColors.grayLight,

            label: countText,
            textColor: isPaper
                ? AppColors.paperTextMedium
                : AppColors.grayMedium,
            shadowColor: isPaper
                ? AppColors.paperExtrusion
                : AppColors.grayExtrusion.withValues(alpha: 0.6),
          ),
        ],
      ),
    );
  }

  /// Widget viên thuốc nhỏ (Pill) dùng chung cho độ khó và số từ
  Widget _buildPill({
    required Color bgColor,
    required Color borderColor,
    required String label,
    required Color textColor,
    required Color shadowColor,
    IconData? icon,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 3.h),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: borderColor, width: 1.w),
        boxShadow: [
          BoxShadow(color: shadowColor, offset: Offset(0, 1.h)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText.c1(
            label,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: textColor,
          ),
        ],
      ),
    );
  }

  /// Badge góc trên báo thẻ đang được chọn
  Widget _buildSelectedBadge(bool isPaper) {
    final bg = isPaper ? AppColors.paperGreen : AppColors.modeBotButton;
    final extrusion = isPaper
        ? AppColors.paperGreenExtrusion
        : AppColors.modeBotButtonExtrusion;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(color: AppColors.white, width: 1.w),
        boxShadow: [
          BoxShadow(color: extrusion, offset: Offset(0, 1.5.h)),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.16),
            blurRadius: 3.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check_circle_rounded, size: 10.r, color: AppColors.white),
          SizedBox(width: 2.w),
          AppText.c1(
            context.l10n.selectedBadge,
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
          ),
        ],
      ),
    );
  }

  /// Màu sắc & icon tương ứng với cấp độ khó
  ({Color bg, Color text, Color border, IconData icon}) _getDifficultyStyle(
    String difficulty,
    bool isPaper,
  ) {
    final lower = difficulty.trim().toLowerCase();
    if (lower == 'dễ' || lower == 'easy') {
      return (
        bg: AppColors.topicEasyBg,
        text: isPaper ? AppColors.paperGreenDark : AppColors.modeBotButtonDark,
        border: isPaper ? AppColors.paperGreenBorder : AppColors.modeBotBorder,
        icon: Icons.spa_rounded,
      );
    }
    if (lower == 'nâng cao' ||
        lower == 'advanced' ||
        lower == 'hard' ||
        lower == 'khó') {
      return (
        bg: AppColors.playerPinkTagBg,
        text: AppColors.playerPinkDark,
        border: AppColors.playerPinkBorder,
        icon: Icons.diamond_rounded,
      );
    }
    return (
      bg: isPaper ? AppColors.paperAmberBadgeBg : AppColors.topicMediumBg,
      text: isPaper ? AppColors.paperAmberBadgeText : AppColors.orangeDark,
      border: isPaper
          ? AppColors.paperAmberBadgeBorder
          : AppColors.modeOnlineBorder,
      icon: (lower == 'tự động' || lower == 'auto')
          ? Icons.auto_awesome_rounded
          : Icons.military_tech_rounded,
    );
  }

  /// Tạo bóng đổ và hiệu ứng đùn 3D cho thẻ
  List<BoxShadow> _buildShadows(bool isPaper) {
    final offset = _isPressed ? 1.0.h : 2.0.h;
    if (isPaper) {
      if (widget.isSelected) {
        return [
          BoxShadow(
            color: AppColors.paperGreenExtrusion,
            offset: Offset(0, offset),
          ),
          BoxShadow(
            color: AppColors.paperGreen.withValues(alpha: 0.25),
            blurRadius: 4.r,
            offset: Offset(0, offset + 1.h),
          ),
        ];
      }
      return [
        BoxShadow(color: AppColors.paperExtrusion, offset: Offset(0, offset)),
        BoxShadow(
          color: AppColors.black.withValues(alpha: 0.08),
          blurRadius: 3.r,
          offset: Offset(0, offset + 0.5.h),
        ),
      ];
    }

    if (widget.isSelected) {
      return [
        BoxShadow(
          color: AppColors.modeBotButtonExtrusion,
          offset: Offset(0, offset),
        ),
        BoxShadow(
          color: AppColors.modeBotButton.withValues(alpha: 0.45),
          blurRadius: 4.r,
          offset: Offset(0, offset + 2.h),
        ),
      ];
    }
    return [
      BoxShadow(
        color: AppColors.woodDark.withValues(alpha: 0.45),
        offset: Offset(0, offset),
      ),
      BoxShadow(
        color: AppColors.black.withValues(alpha: 0.12),
        blurRadius: 4.r,
        offset: Offset(0, offset + 2.h),
      ),
    ];
  }
}
