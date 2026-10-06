import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Trạng thái của từng ô đáp án (Bình thường, Đúng, Sai)
enum VocabularyAnswerStatus { normal, correct, wrong }

/// Ô đáp án dạng Thẻ 3D (Answer Item) trong Quick Battle
/// (Hỗ trợ Paper & Classic theme)
class VocabularyAnswerItem extends StatefulWidget {
  const VocabularyAnswerItem({
    required this.text,
    required this.isPlayer1,
    required this.onTap,
    super.key,
    this.keyTag,
    this.status = VocabularyAnswerStatus.normal,
    this.isDisabled = false,
  });

  final String text;
  final String? keyTag;
  final bool isPlayer1;
  final VoidCallback onTap;
  final VocabularyAnswerStatus status;
  final bool isDisabled;

  @override
  State<VocabularyAnswerItem> createState() => _VocabularyAnswerItemState();
}

class _VocabularyAnswerItemState extends State<VocabularyAnswerItem> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    var cardBgColor = isPaper ? AppColors.paperCardBg : AppColors.white;
    var textColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    var borderColor = isPaper ? AppColors.paperBorder : AppColors.white;
    var extrusionColor = isPaper
        ? (widget.isPlayer1
              ? AppColors.playerPinkBorder
              : AppColors.playerBlueBorder)
        : (widget.isPlayer1
              ? AppColors.playerPinkExtrusion
              : AppColors.playerBlueExtrusion);

    switch (widget.status) {
      case VocabularyAnswerStatus.correct:
        cardBgColor = isPaper ? AppColors.paperGreen : AppColors.green;
        textColor = AppColors.white;
        borderColor = isPaper
            ? AppColors.paperGreenBorder
            : AppColors.greenLight;
        extrusionColor = isPaper
            ? AppColors.paperGreenExtrusion
            : AppColors.greenDark;
      case VocabularyAnswerStatus.wrong:
        cardBgColor = AppColors.red;
        textColor = AppColors.white;
        borderColor = AppColors.redLight;
        extrusionColor = AppColors.redDark;
      case VocabularyAnswerStatus.normal:
        break;
    }

    const extrusion = 4.0;
    final currentOffset = _isPressed ? extrusion - 1.0 : 0.0;

    // Màu của tag phím ở góc (nếu có)
    final tagBg = widget.isPlayer1
        ? AppColors.playerPinkTagBg
        : AppColors.playerBlueTagBg;
    final tagTextColor = widget.isPlayer1
        ? AppColors.playerPinkDark
        : AppColors.playerBlueDark;

    return GestureDetector(
      onTapDown: widget.isDisabled
          ? null
          : (_) => setState(() => _isPressed = true),
      onTapUp: widget.isDisabled
          ? null
          : (_) {
              setState(() => _isPressed = false);
              widget.onTap();
            },
      onTapCancel: widget.isDisabled
          ? null
          : () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 60),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0, currentOffset, 0),
        decoration: BoxDecoration(
          color: cardBgColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: borderColor,
            width: 1.5.w,
          ),
          boxShadow: [
            if (!_isPressed)
              BoxShadow(
                color: extrusionColor,
                offset: const Offset(0, extrusion),
              ),
            BoxShadow(
              color: AppColors.black.withValues(alpha: isPaper ? 0.08 : 0.1),
              offset: const Offset(0, extrusion + 2),
              blurRadius: 4.r,
            ),
          ],
        ),
        child: Stack(
          children: [
            // 1. Tag phím tròn nhỏ ở góc trên bên trái (nếu có keyTag)
            if (widget.keyTag != null && widget.keyTag!.isNotEmpty)
              Positioned(
                top: 6.h,
                left: 8.w,
                child: Container(
                  width: 20.r,
                  height: 20.r,
                  decoration: BoxDecoration(
                    color: widget.status == VocabularyAnswerStatus.normal
                        ? tagBg
                        : AppColors.white.withValues(alpha: 0.25),
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: AppText.c1(
                    widget.keyTag!,
                    fontWeight: FontWeight.w700,
                    color: widget.status == VocabularyAnswerStatus.normal
                        ? tagTextColor
                        : AppColors.white,
                    fontSize: 10.sp,
                  ),
                ),
              ),

            // 2. Nội dung từ vựng tiếng Anh ở giữa thẻ
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: AppText.t2(
                  widget.text,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                  fontSize: 18.sp,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
