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

  static const Color _sandBorder = Color(0xFFC9BCA7);
  static const Color _cardShadow = Color(0xFFB5A691);

  (Color bg, Color border, Color text, IconData icon) _getModeTheme(
    String mode,
  ) {
    switch (mode) {
      case 'Nối từ':
        return (
          const Color(0xFFF2E9FB),
          const Color(0xFFE9D5FF),
          const Color(0xFF6B21A8),
          Icons.link_rounded,
        );
      case 'Đoán từ':
        return (
          const Color(0xFFECFDF5),
          const Color(0xFFA7F3D0),
          const Color(0xFF047857),
          Icons.help_outline_rounded,
        );
      case 'Ôn tập':
        return (
          const Color(0xFFEFF6FF),
          const Color(0xFFBAE6FD),
          const Color(0xFF1D4ED8),
          Icons.menu_book_rounded,
        );
      case 'Đấu từ':
      default:
        return (
          const Color(0xFFFFF7ED),
          const Color(0xFFFED7AA),
          const Color(0xFFC2410C),
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
          color: _isPressed ? const Color(0xFFFDFBF7) : AppColors.white,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: _isPressed ? const Color(0xFFB8A690) : _sandBorder,
            width: 1.w,
          ),
          boxShadow: [
            BoxShadow(
              color: _cardShadow.withValues(alpha: _isPressed ? 0.2 : 0.4),
              offset: Offset(0, _isPressed ? 1 : 2.5),
              blurRadius: _isPressed ? 0.5 : 1.5,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Hàng 1: Từ tiếng Anh, Nút loa, Badge chế độ chơi
            Row(
              children: [
                Flexible(
                  child: AppText.t3(
                    widget.word.en,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.sp,
                    color: AppColors.grayDark,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 4.w),
                // Nút loa có hiệu ứng nhấn riêng
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTapDown: (_) => setState(() => _isAudioPressed = true),
                  onTapUp: (_) {
                    setState(() => _isAudioPressed = false);
                    widget.onPlayAudio?.call();
                  },
                  onTapCancel: () => setState(() => _isAudioPressed = false),
                  child: AnimatedScale(
                    scale: _isAudioPressed ? 0.88 : 1.0,
                    duration: const Duration(milliseconds: 80),
                    child: Container(
                      padding: EdgeInsets.all(2.r),
                      decoration: BoxDecoration(
                        color: _isAudioPressed
                            ? const Color(0xFFE2D6C0)
                            : const Color(0xFFF1EBD9),
                        shape: BoxShape.circle,
                        border: Border.all(color: _sandBorder, width: 1.w),
                      ),
                      child: Icon(
                        Icons.volume_up_rounded,
                        size: 12.r,
                        color: const Color(0xFF786C59),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 4.w),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 4.w,
                    vertical: 2.h,
                  ),
                  decoration: BoxDecoration(
                    color: modeTheme.$1,
                    borderRadius: BorderRadius.circular(4.r),
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
              ],
            ),

            // Hàng 2: Nghĩa tiếng Việt
            AppText.b2(
              widget.word.vi,
              fontSize: 12.sp,
              color: AppColors.grayMedium,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            // Hàng 3: Tag chủ đề & Nút Báo lỗi dịch
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.sell_outlined,
                        size: 10.r,
                        color: AppColors.paperTextMuted,
                      ),
                      SizedBox(width: 2.w),
                      Flexible(
                        child: AppText.c1(
                          widget.word.topic.isNotEmpty
                              ? widget.word.topic
                              : 'general',
                          fontSize: 10.sp,
                          color: AppColors.paperTextMuted,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 4.w),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 80),
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: _isPressed
                        ? const Color(0xFFFFE4DC)
                        : const Color(0xFFFFF2ED),
                    borderRadius: BorderRadius.circular(4.r),
                    border: Border.all(
                      color: const Color(0xFFFECDD3),
                      width: 1.w,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.error_outline_rounded,
                        size: 10.r,
                        color: const Color(0xFFB93815),
                      ),
                      SizedBox(width: 2.w),
                      AppText.c1(
                        'Báo lỗi',
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFFB93815),
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
