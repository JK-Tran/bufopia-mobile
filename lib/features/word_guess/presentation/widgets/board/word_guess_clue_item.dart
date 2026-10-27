import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Mục gợi ý nghĩa tiếng Việt & Phiên âm (Clue Item)
/// Thiết kế 3D tinh gọn, tối ưu chiều cao cho màn hình Mobile:
/// - Nhãn "GỢI Ý NGHĨA"
/// - Nghĩa tiếng Việt rõ ràng, dễ đọc
/// - Hàng thông số: [X chữ cái] • [Phiên âm] • [Nút loa phát âm]
class WordGuessClueItem extends StatelessWidget {
  const WordGuessClueItem({
    required this.meaning,
    required this.length,
    required this.isPaperTheme,
    this.phonetic,
    this.wordEn,
    super.key,
  });

  final String meaning;
  final int length;
  final String? phonetic;
  final String? wordEn;
  final bool isPaperTheme;

  void _onPlaySound() {
    if (wordEn != null && wordEn!.isNotEmpty) {
      sl<AppAudioService>().speakWord(wordEn!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final hasPhonetic = phonetic != null && phonetic!.isNotEmpty;

    final cardBg = isPaperTheme ? AppColors.paperSurface : AppColors.white;
    final cardBorder = isPaperTheme
        ? AppColors.paperBorder
        : AppColors.classicBorder;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(
          color: cardBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaperTheme
                ? AppColors.paperExtrusion.withValues(alpha: 0.35)
                : AppColors.black.withValues(alpha: 0.05),
            offset: Offset(0, 2.h),
            blurRadius: isPaperTheme ? 0 : 4.r,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Nhãn GỢI Ý NGHĨA
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
            decoration: BoxDecoration(
              color: isPaperTheme
                  ? AppColors.paperAmberBadgeBg
                  : AppColors.classicBadgePurpleBg,
              borderRadius: BorderRadius.circular(6.r),
              border: Border.all(
                color: isPaperTheme
                    ? AppColors.paperAmberBadgeBorder
                    : AppColors.classicBadgePurpleBorder,
                width: 1.w,
              ),
            ),
            child: AppText.c1(
              context.l10n.meaningClue,
              color: isPaperTheme
                  ? AppColors.paperAmberBadgeText
                  : AppColors.classicBadgePurpleText,
              fontSize: 10.sp,
              fontWeight: FontWeight.w700,
            ),
          ),

          SizedBox(height: 4.h),

          // 2. Nghĩa tiếng Việt
          AppText.t2(
            meaning.isNotEmpty ? meaning : context.l10n.loadingClue,
            color: isPaperTheme ? AppColors.paperTextDark : AppColors.grayDark,
            fontWeight: FontWeight.w700,
            fontSize: 18.sp,
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),

          SizedBox(height: 6.h),

          // 3. Thông số phụ: [X chữ cái] • [Phiên âm] • [Loa phát âm]
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 6.w,
            runSpacing: 4.h,
            children: [
              // Chip số lượng chữ cái
              Container(
                padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: isPaperTheme
                      ? AppColors.paperCardBg
                      : AppColors.lightBackground,
                  borderRadius: BorderRadius.circular(6.r),
                  border: Border.all(
                    color: isPaperTheme
                        ? AppColors.paperBorder
                        : AppColors.classicBorder,
                    width: 1.w,
                  ),
                ),
                child: AppText.c1(
                  context.l10n.nLettersCount(length),
                  color: isPaperTheme
                      ? AppColors.paperTextDark
                      : AppColors.grayDark,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),

              // Chip Phiên âm IPA (nếu có)
              if (hasPhonetic)
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                  decoration: BoxDecoration(
                    color: isPaperTheme
                        ? AppColors.paperCardBg
                        : AppColors.lightBackground,
                    borderRadius: BorderRadius.circular(6.r),
                    border: Border.all(
                      color: isPaperTheme
                          ? AppColors.paperBorder
                          : AppColors.classicBorder,
                      width: 1.w,
                    ),
                  ),
                  child: AppText.c1(
                    phonetic!,
                    color: isPaperTheme
                        ? AppColors.paperTextMedium
                        : AppColors.grayMedium,
                    fontSize: 10.sp,
                  ),
                ),

              // Nút loa phát âm
              if (wordEn != null && wordEn!.isNotEmpty)
                AppIconButton(
                  icon: Icons.volume_up_rounded,
                  tooltip: 'Phát âm tiếng Anh',
                  size: 26.r,
                  iconSize: 14.r,
                  backgroundColor: isPaperTheme
                      ? AppColors.paperCardBg
                      : AppColors.white,
                  iconColor: isPaperTheme
                      ? AppColors.paperGreenDark
                      : AppColors.primary,
                  borderColor: isPaperTheme
                      ? AppColors.paperBorder
                      : AppColors.classicBorder,
                  extrusionColor: isPaperTheme
                      ? AppColors.paperExtrusion
                      : AppColors.grayExtrusion,
                  extrusionHeight: 1.5,
                  onPressed: _onPlaySound,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
