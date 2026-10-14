import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Trạng thái của từng ô đáp án (Bình thường, Đúng, Sai)
enum VocabularyAnswerStatus { normal, correct, wrong }

/// Ô đáp án dạng Thẻ 3D (Answer Item) trong Quick Battle
/// (Hỗ trợ Paper & Classic theme và hiển thị avatar chỉ báo lựa chọn)
class VocabularyAnswerItem extends StatefulWidget {
  const VocabularyAnswerItem({
    required this.text,
    required this.isPlayer1,
    required this.onTap,
    super.key,
    this.keyTag,
    this.status = VocabularyAnswerStatus.normal,
    this.isDisabled = false,
    this.opponentAvatar,
    this.isOpponentSelected = false,
    this.isOpponentCorrect,
    this.playerAvatar,
    this.isPlayerSelected = false,
  });

  final String text;
  final String? keyTag;
  final bool isPlayer1;
  final VoidCallback onTap;
  final VocabularyAnswerStatus status;
  final bool isDisabled;
  final String? opponentAvatar;
  final bool isOpponentSelected;
  final bool? isOpponentCorrect;
  final String? playerAvatar;
  final bool isPlayerSelected;

  @override
  State<VocabularyAnswerItem> createState() => _VocabularyAnswerItemState();
}

class _VocabularyAnswerItemState extends State<VocabularyAnswerItem> {
  bool _isPressed = false;

  @override
  void didUpdateWidget(covariant VocabularyAnswerItem oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isDisabled && _isPressed) {
      _isPressed = false;
    }
  }

  void _onTapDown(TapDownDetails details) {
    if (widget.isDisabled) return;
    if (!_isPressed) {
      setState(() => _isPressed = true);
    }
  }

  void _onTapUp(TapUpDetails details) {
    if (widget.isDisabled) return;
    if (_isPressed) {
      setState(() => _isPressed = false);
    }
    widget.onTap();
  }

  void _onTapCancel() {
    if (!_isPressed) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted && _isPressed) {
        setState(() => _isPressed = false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    var cardBgColor = AppColors.white;
    var textColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    var borderColor = isPaper ? AppColors.paperBorder : AppColors.grayLight;
    var extrusionColor = isPaper
        ? AppColors.paperExtrusion
        : AppColors.grayExtrusion;

    // Nếu đối thủ đã chọn ĐÚNG ô này trước, ô này cũng chuyển màu thành công
    final isOpponentCorrectAnswer =
        widget.isOpponentSelected && widget.isOpponentCorrect == true;

    if (widget.status == VocabularyAnswerStatus.correct ||
        isOpponentCorrectAnswer) {
      cardBgColor = isPaper ? AppColors.paperGreen : AppColors.green;
      textColor = AppColors.white;
      borderColor = isPaper ? AppColors.paperGreenBorder : AppColors.greenLight;
      extrusionColor = isPaper
          ? AppColors.paperGreenExtrusion
          : AppColors.greenDark;
    } else if (widget.status == VocabularyAnswerStatus.wrong) {
      cardBgColor = AppColors.red;
      textColor = AppColors.white;
      borderColor = AppColors.redLight;
      extrusionColor = AppColors.redDark;
    } else if (widget.isOpponentSelected) {
      // Đối thủ đã chọn ô này: Đánh dấu viền để người chơi nhận biết
      if (widget.isOpponentCorrect == false) {
        borderColor = AppColors.red;
        extrusionColor = AppColors.redDark.withValues(alpha: 0.6);
        cardBgColor = isPaper
            ? AppColors.white
            : AppColors.red.withValues(alpha: 0.06);
      } else {
        borderColor = isPaper
            ? AppColors.playerBlueBorder
            : AppColors.playerBlue;
        extrusionColor = isPaper
            ? AppColors.playerBlueExtrusion
            : AppColors.playerBlueExtrusion;
      }
    } else if (widget.isPlayerSelected) {
      borderColor = isPaper ? AppColors.playerPinkBorder : AppColors.playerPink;
      extrusionColor = isPaper
          ? AppColors.playerPinkExtrusion
          : AppColors.playerPinkExtrusion;
    }

    const extrusion = 4.0;
    final currentOffset = _isPressed ? extrusion - 1.0 : 0.0;

    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final effectiveFontSize = isLandscape ? 15.0 : 14.sp;
    final horizontalPadding = isLandscape ? 8.0 : 8.w;

    // Màu của tag phím ở góc (nếu có)
    final tagBg = widget.isPlayer1
        ? AppColors.playerPinkTagBg
        : AppColors.playerBlueTagBg;
    final tagTextColor = widget.isPlayer1
        ? AppColors.playerPinkDark
        : AppColors.playerBlueDark;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onTapCancel: _onTapCancel,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 60),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0, currentOffset, 0),
        decoration: BoxDecoration(
          color: cardBgColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: borderColor,
            width: (widget.isOpponentSelected || widget.isPlayerSelected)
                ? 2.2.w
                : 1.5.w,
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
          clipBehavior: Clip.none,
          children: [
            // 1. Tag phím tròn nhỏ ở góc trên bên trái (nếu có keyTag)
            if (widget.keyTag != null && widget.keyTag!.isNotEmpty)
              Positioned(
                top: 6.h,
                left: 8.w,
                child: Container(
                  width: 22.r,
                  height: 22.r,
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

            // 2. Chỉ báo Avatar Player 1 (khi P1 chọn)
            if (widget.isPlayerSelected)
              Positioned(
                top: 5.h,
                left: (widget.keyTag != null && widget.keyTag!.isNotEmpty)
                    ? 34.w
                    : 8.w,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: widget.status == VocabularyAnswerStatus.correct
                        ? AppColors.green
                        : (widget.status == VocabularyAnswerStatus.wrong
                              ? AppColors.red
                              : AppColors.playerPink),
                    borderRadius: BorderRadius.circular(10.r),
                    border: Border.all(color: AppColors.white, width: 1.2.w),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.16),
                        offset: Offset(0, 1.5.h),
                        blurRadius: 2.r,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipOval(
                        child: AppAvatar(
                          avatarUrl: widget.playerAvatar,
                          size: 14.r,
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Icon(
                        widget.status == VocabularyAnswerStatus.correct
                            ? Icons.check_rounded
                            : (widget.status == VocabularyAnswerStatus.wrong
                                  ? Icons.close_rounded
                                  : Icons.touch_app_rounded),
                        size: 11.r,
                        color: AppColors.white,
                      ),
                    ],
                  ),
                ),
              ),

            // 3. Chỉ báo Avatar Đối thủ (Avatar Pin tròn ở góc trên bên phải)
            if (widget.isOpponentSelected)
              Positioned(
                top: 6.h,
                right: 8.w,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: 26.r,
                      height: 26.r,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.white,
                          width: 2.w,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.black.withValues(alpha: 0.22),
                            offset: Offset(0, 1.5.h),
                            blurRadius: 3.r,
                          ),
                        ],
                      ),
                      child: ClipOval(
                        child: AppAvatar(
                          avatarUrl: widget.opponentAvatar,
                          size: 26.r,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -2.h,
                      right: -2.w,
                      child: Container(
                        width: 13.r,
                        height: 13.r,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: widget.isOpponentCorrect == true
                              ? AppColors.green
                              : (widget.isOpponentCorrect == false
                                    ? AppColors.red
                                    : AppColors.playerBlue),
                          border: Border.all(
                            color: AppColors.white,
                            width: 1.2.w,
                          ),
                        ),
                        child: Icon(
                          widget.isOpponentCorrect == true
                              ? Icons.check_rounded
                              : (widget.isOpponentCorrect == false
                                    ? Icons.close_rounded
                                    : Icons.touch_app_rounded),
                          size: 9.r,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

            // 4. Nội dung từ vựng tiếng Anh ở giữa thẻ
            // (cỡ chữ đồng đều, không rớt dòng)
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: AppText.t3(
                    widget.text,
                    fontWeight: FontWeight.w700,
                    color: textColor,
                    fontSize: effectiveFontSize,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
