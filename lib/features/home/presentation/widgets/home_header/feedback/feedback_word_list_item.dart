import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/vocabulary/domain/entities/word.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FeedbackWordListItem extends StatefulWidget {
  const FeedbackWordListItem({
    required this.word,
    required this.onReport,
    this.gameMode = 'Đấu từ',
    this.onPlayAudio,
    super.key,
  });

  final Word word;
  final String gameMode;
  final VoidCallback onReport;
  final VoidCallback? onPlayAudio;

  @override
  State<FeedbackWordListItem> createState() => _FeedbackWordListItemState();
}

class _FeedbackWordListItemState extends State<FeedbackWordListItem> {
  bool _isPressed = false;
  bool _isAudioPressed = false;

  (Color bg, Color border, Color text, IconData icon) _getModeTheme(
    String mode,
  ) {
    switch (mode) {
      case 'Nối từ':
        return (
          AppColors.classicBadgePurpleBg,
          AppColors.classicBadgePurpleBorder,
          AppColors.classicBadgePurpleText,
          Icons.link_rounded,
        );
      case 'Đoán từ':
        return (
          AppColors.topicEasyBg,
          AppColors.modeBotBorder,
          AppColors.modeBotButtonDark,
          Icons.help_outline_rounded,
        );
      case 'Ôn tập':
        return (
          AppColors.skySurface,
          AppColors.modeIdBorder,
          AppColors.modeIdButton,
          Icons.menu_book_rounded,
        );
      case 'Đấu từ':
      default:
        return (
          AppColors.podiumBronze3Bg,
          AppColors.podiumBronze3BgEnd,
          AppColors.paperStreakText,
          Icons.sports_esports_rounded,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final modeTheme = _getModeTheme(widget.gameMode);

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onReport();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 80),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(0, _isPressed ? 2 : 0, 0),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
        decoration: BoxDecoration(
          color: _isPressed ? AppColors.paperSurfaceWarm : AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: _isPressed
                ? AppColors.feedbackSandExtrusion
                : AppColors.feedbackSandBorder,
            width: 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.feedbackSandExtrusion.withValues(
                alpha: _isPressed ? 0.2 : 0.4,
              ),
              offset: Offset(0, _isPressed ? 1 : 2.5),
              blurRadius: _isPressed ? 0.5 : 1.5,
            ),
          ],
        ),
        child: Row(
          children: [
            // Cột bên trái: Nội dung từ vựng hiển thị đầy đủ, không bị ellipsis
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Hàng 1: Từ tiếng Anh + Nút phát âm
                  Row(
                    children: [
                      Flexible(
                        child: AppText.t3(
                          widget.word.en,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                          color: AppColors.grayDark,
                        ),
                      ),
                      SizedBox(width: 6.w),
                      // Nút loa có hiệu ứng nhấn riêng
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTapDown: (_) =>
                            setState(() => _isAudioPressed = true),
                        onTapUp: (_) {
                          setState(() => _isAudioPressed = false);
                          widget.onPlayAudio?.call();
                        },
                        onTapCancel: () =>
                            setState(() => _isAudioPressed = false),
                        child: AnimatedScale(
                          scale: _isAudioPressed ? 0.88 : 1.0,
                          duration: const Duration(milliseconds: 80),
                          child: Container(
                            padding: EdgeInsets.all(3.r),
                            decoration: BoxDecoration(
                              color: _isAudioPressed
                                  ? AppColors.feedbackAudioPressed
                                  : AppColors.feedbackWarmBeigeDark,
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: AppColors.feedbackSandBorder,
                                width: 1.w,
                              ),
                            ),
                            child: Icon(
                              Icons.volume_up_rounded,
                              size: 14.r,
                              color: AppColors.feedbackTextBrown,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 4.h),

                  // Hàng 2: Nghĩa tiếng Việt rõ ràng, đầy đủ (không cắt ...)
                  AppText.b2(
                    widget.word.vi,
                    fontSize: 12.sp,
                    color: AppColors.grayMedium,
                  ),

                  SizedBox(height: 4.h),

                  // Hàng 3: Tag chủ đề
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.sell_outlined,
                        size: 10.r,
                        color: AppColors.paperTextMuted,
                      ),
                      SizedBox(width: 4.w),
                      AppText.c1(
                        widget.word.topic.isNotEmpty
                            ? widget.word.topic
                            : 'general',
                        fontSize: 10.sp,
                        color: AppColors.paperTextMuted,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(width: 8.w),

            // Cột bên phải: Badge chế độ chơi & Nút Báo lỗi
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Badge chế độ chơi
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.w,
                    vertical: 3.h,
                  ),
                  decoration: BoxDecoration(
                    color: modeTheme.$1,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(color: modeTheme.$2, width: 1.w),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(modeTheme.$4, size: 10.r, color: modeTheme.$3),
                      SizedBox(width: 2.w),
                      AppText.c1(
                        widget.gameMode,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: modeTheme.$3,
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 8.h),

                // Nút Báo lỗi
                AnimatedContainer(
                  duration: const Duration(milliseconds: 80),
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: _isPressed
                        ? AppColors.redLight
                        : AppColors.streakBadgeBg,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: AppColors.streakBadgeBorder,
                      width: 1.w,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.error_outline_rounded,
                        size: 12.r,
                        color: AppColors.redDeep,
                      ),
                      SizedBox(width: 3.w),
                      AppText.c1(
                        'Báo lỗi',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.redDeep,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
