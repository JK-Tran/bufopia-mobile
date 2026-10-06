import 'package:bufopia/components/app_paper_clip.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Phần tử chủ đề từ vựng phong cách kẹp ghim
/// (3D Game Style - Hỗ trợ Paper & Classic theme)
class TopicItem extends StatefulWidget {
  const TopicItem({
    required this.topic,
    required this.isSelected,
    required this.onTap,
    this.isPaperTheme,
    super.key,
  });

  final TopicEntity topic;
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
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: _isPressed ? 0.98 : 1.0,
        duration: const Duration(milliseconds: 90),
        curve: Curves.easeInOut,
        child: AnimatedSlide(
          offset: Offset(0, _isPressed ? 0.025 : 0),
          duration: const Duration(milliseconds: 90),
          curve: Curves.easeInOut,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // 1. Thân phần tử 3D
              _ItemBody(
                topic: widget.topic,
                isSelected: widget.isSelected,
                isPressed: _isPressed,
                isPaperTheme: isPaper,
              ),

              // 2. Kẹp ghim vàng bên trái
              Positioned(
                top: -6.h,
                left: 16.w,
                child: AppPaperClip(width: 10.w, height: 20.h),
              ),

              // 3. Kẹp ghim vàng bên phải
              Positioned(
                top: -6.h,
                right: 16.w,
                child: AppPaperClip(width: 10.w, height: 20.h),
              ),

              // 4. Chip trạng thái "Đã chọn" 3D
              if (widget.isSelected)
                Positioned(
                  top: -5.h,
                  left: -2.w,
                  child: _SelectedChip(isPaperTheme: isPaper),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Khung thân phần tử 3D có gờ đáy nổi đặc và bóng đổ 2 lớp chuẩn UI guidelines
class _ItemBody extends StatelessWidget {
  const _ItemBody({
    required this.topic,
    required this.isSelected,
    required this.isPressed,
    required this.isPaperTheme,
  });

  final TopicEntity topic;
  final bool isSelected;
  final bool isPressed;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 90),
      curve: Curves.easeInOut,
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
      decoration: BoxDecoration(
        gradient: isPaperTheme
            ? const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.paperCardGradientStart,
                  AppColors.paperCardGradientEnd,
                ],
              )
            : const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.white,
                  AppColors.woodParchmentLight,
                ],
              ),
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: isSelected
              ? (isPaperTheme ? AppColors.paperGreen : AppColors.modeBotButton)
              : (isPaperTheme ? AppColors.paperBorder : AppColors.peach),
          width: isSelected ? 2.5.w : (isPaperTheme ? 1.5.w : 2.w),
        ),
        boxShadow: _buildBoxShadow(),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 2.h),
          SizedBox(
            height: 38.h,
            child: Center(child: _ItemIllustration(topic: topic)),
          ),
          _ItemInfo(
            name: topic.name,
            subtitle: topic.subtitle,
            isPaperTheme: isPaperTheme,
          ),
          _ItemBadges(
            topic: topic,
            isPaperTheme: isPaperTheme,
          ),
        ],
      ),
    );
  }

  List<BoxShadow> _buildBoxShadow() {
    if (isPaperTheme) {
      if (isSelected) {
        return [
          BoxShadow(
            color: AppColors.paperGreenExtrusion,
            offset: Offset(0, isPressed ? 1.h : 2.5.h),
          ),
          BoxShadow(
            color: AppColors.paperGreen.withValues(alpha: 0.25),
            blurRadius: 4.r,
            offset: Offset(0, isPressed ? 1.5.h : 3.h),
          ),
        ];
      }
      return [
        BoxShadow(
          color: AppColors.paperExtrusion,
          offset: Offset(0, isPressed ? 1.h : 2.h),
        ),
        BoxShadow(
          color: AppColors.black.withValues(alpha: 0.08),
          blurRadius: 3.r,
          offset: Offset(0, isPressed ? 1.5.h : 2.5.h),
        ),
      ];
    }

    if (isSelected) {
      return [
        // Gờ đáy nổi 3D đặc (Solid Extrusion) màu xanh ngọc sâu
        BoxShadow(
          color: AppColors.modeBotButtonExtrusion,
          offset: Offset(0, isPressed ? 1.h : 2.h),
        ),
        // Lớp bóng mờ lan tỏa xuống nền
        BoxShadow(
          color: AppColors.modeBotButton.withValues(alpha: 0.45),
          blurRadius: 4.r,
          offset: Offset(0, isPressed ? 2.h : 4.h),
        ),
      ];
    }
    return [
      // Gờ đáy nổi 3D đặc (Solid Extrusion) tông vàng đào/gỗ ấm
      BoxShadow(
        color: AppColors.woodDark.withValues(alpha: 0.45),
        offset: Offset(0, isPressed ? 1.h : 2.h),
      ),
      // Lớp bóng mờ lan tỏa xuống nền trời
      BoxShadow(
        color: AppColors.black.withValues(alpha: 0.12),
        blurRadius: 4.r,
        offset: Offset(0, isPressed ? 2.h : 4.h),
      ),
    ];
  }
}

/// Hình minh họa chủ đề hoặc icon ngôi sao ngẫu nhiên
class _ItemIllustration extends StatelessWidget {
  const _ItemIllustration({required this.topic});

  final TopicEntity topic;

  @override
  Widget build(BuildContext context) {
    if (topic.isAuto) {
      return Container(
        width: 36.r,
        height: 36.r,
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
          size: 20.r,
          color: AppColors.white,
        ),
      );
    }

    return Image.asset(
      topic.imagePath!,
      height: 38.h,
      fit: BoxFit.contain,
      errorBuilder: (context, error, stackTrace) => Icon(
        Icons.menu_book_rounded,
        size: 28.r,
        color: AppColors.brownDark,
      ),
    );
  }
}

/// Tên chủ đề và mô tả phụ
class _ItemInfo extends StatelessWidget {
  const _ItemInfo({
    required this.name,
    required this.subtitle,
    required this.isPaperTheme,
  });

  final String name;
  final String subtitle;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppText.t3(
          name,
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
          color: isPaperTheme ? AppColors.paperTextDark : AppColors.grayDark,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 1.h),
        AppText.c1(
          subtitle,
          fontSize: 10.sp,
          color: isPaperTheme ? AppColors.paperTextMuted : AppColors.grayMedium,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

/// Bảng phối màu và biểu tượng theo cấp độ khó
class _DifficultyTheme {
  const _DifficultyTheme({
    required this.bgColor,
    required this.textColor,
    required this.borderColor,
    required this.icon,
  });

  factory _DifficultyTheme.from(
    String difficulty, {
    bool isPaperTheme = false,
  }) {
    if (isPaperTheme) {
      return switch (difficulty) {
        'Dễ' => const _DifficultyTheme(
          bgColor: AppColors.topicEasyBg,
          textColor: AppColors.paperGreenDark,
          borderColor: AppColors.paperGreenBorder,
          icon: Icons.spa_rounded,
        ),
        'Nâng cao' => const _DifficultyTheme(
          bgColor: AppColors.playerPinkTagBg,
          textColor: AppColors.playerPinkDark,
          borderColor: AppColors.playerPinkBorder,
          icon: Icons.diamond_rounded,
        ),
        _ => const _DifficultyTheme(
          bgColor: AppColors.paperAmberBadgeBg,
          textColor: AppColors.paperAmberBadgeText,
          borderColor: AppColors.paperAmberBadgeBorder,
          icon: Icons.auto_awesome_rounded,
        ),
      };
    }

    return switch (difficulty) {
      'Dễ' => const _DifficultyTheme(
        bgColor: AppColors.topicEasyBg,
        textColor: AppColors.modeBotButtonDark,
        borderColor: AppColors.modeBotBorder,
        icon: Icons.spa_rounded,
      ),
      'Nâng cao' => const _DifficultyTheme(
        bgColor: AppColors.playerPinkTagBg,
        textColor: AppColors.playerPinkDark,
        borderColor: AppColors.playerPinkBorder,
        icon: Icons.diamond_rounded,
      ),
      'Tự động' => const _DifficultyTheme(
        bgColor: AppColors.topicMediumBg,
        textColor: AppColors.orangeDark,
        borderColor: AppColors.modeOnlineBorder,
        icon: Icons.auto_awesome_rounded,
      ),
      _ => const _DifficultyTheme(
        bgColor: AppColors.topicMediumBg,
        textColor: AppColors.orangeDark,
        borderColor: AppColors.modeOnlineBorder,
        icon: Icons.military_tech_rounded,
      ),
    };
  }

  final Color bgColor;
  final Color textColor;
  final Color borderColor;
  final IconData icon;
}

/// Nhóm badge dưới cùng (Độ khó & Số từ vựng) - 100% đồng bộ cho tất cả các thẻ
class _ItemBadges extends StatelessWidget {
  const _ItemBadges({
    required this.topic,
    required this.isPaperTheme,
  });

  final TopicEntity topic;
  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    final theme = _DifficultyTheme.from(
      topic.difficulty,
      isPaperTheme: isPaperTheme,
    );

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (topic.difficulty.isNotEmpty)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              decoration: BoxDecoration(
                color: theme.bgColor,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: theme.borderColor, width: 1.w),
                boxShadow: [
                  BoxShadow(
                    color: isPaperTheme
                        ? theme.borderColor.withValues(alpha: 0.25)
                        : theme.borderColor.withValues(alpha: 0.4),
                    offset: Offset(0, 1.h),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(theme.icon, size: 10.r, color: theme.textColor),
                  SizedBox(width: 2.w),
                  AppText.c1(
                    topic.difficulty,
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w700,
                    color: theme.textColor,
                  ),
                ],
              ),
            ),
          SizedBox(width: 3.w),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: isPaperTheme ? AppColors.paperCardBg : AppColors.white,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(
                color: isPaperTheme
                    ? AppColors.paperBorder
                    : AppColors.grayLight,
                width: 1.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: isPaperTheme
                      ? AppColors.paperExtrusion
                      : AppColors.grayExtrusion.withValues(alpha: 0.6),
                  offset: Offset(0, 1.h),
                ),
              ],
            ),
            child: AppText.c1(
              topic.displayWordCount,
              fontSize: 10.sp,
              color: isPaperTheme
                  ? AppColors.paperTextMedium
                  : AppColors.grayMedium,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

/// Chip trạng thái "Đã chọn" nổi khối 3D
class _SelectedChip extends StatelessWidget {
  const _SelectedChip({required this.isPaperTheme});

  final bool isPaperTheme;

  @override
  Widget build(BuildContext context) {
    final chipBg = isPaperTheme
        ? AppColors.paperGreen
        : AppColors.modeBotButton;
    final chipExtrusion = isPaperTheme
        ? AppColors.paperGreenExtrusion
        : AppColors.modeBotButtonExtrusion;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: chipBg,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(color: AppColors.white, width: 1.w),
        boxShadow: [
          BoxShadow(
            color: chipExtrusion,
            offset: Offset(0, 1.5.h),
          ),
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
          SizedBox(width: 3.w),
          AppText.c1(
            'Đã chọn',
            fontSize: 10.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
          ),
        ],
      ),
    );
  }
}
