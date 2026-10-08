import 'package:bufopia/components/app_countdown_timer.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

/// Thẻ câu hỏi mục tiêu có huy hiệu đồng hồ nổi đính trên đỉnh
/// (Top Floating Badge) ở màn hình ngang
class LandscapeQuestionCard extends StatelessWidget {
  const LandscapeQuestionCard({
    required this.targetWord,
    required this.topicName,
    required this.remainingSeconds,
    required this.isPaper,
    this.onSpeakerTap,
    super.key,
  });

  final String targetWord;
  final String topicName;
  final int remainingSeconds;
  final bool isPaper;
  final VoidCallback? onSpeakerTap;

  @override
  Widget build(BuildContext context) {
    const clockSize = 34.0;
    const cardHeight = 54.0;
    const cardTopOffset = 30.0;
    const totalHeight = cardTopOffset + cardHeight;

    final cardDecoration = isPaper
        ? BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.paperBorder,
              width: 1.5,
            ),
            boxShadow: [
              const BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 3),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.08),
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          )
        : BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: AppColors.grayLight,
              width: 1.5,
            ),
            boxShadow: [
              const BoxShadow(
                color: AppColors.grayExtrusion,
                offset: Offset(0, 3),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.1),
                offset: const Offset(0, 4),
                blurRadius: 4,
              ),
            ],
          );

    final topicText = topicName.isNotEmpty
        ? 'CHỦ ĐỀ: ${topicName.toUpperCase()}'
        : 'DỊCH SANG TIẾNG ANH';

    return SizedBox(
      height: totalHeight,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          // 1. THẺ CÂU HỎI CHÍNH (Nằm ở đáy, cao 54px bằng P1 & P2)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: cardHeight,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: cardDecoration,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Nút Loa phát âm tròn bên trái
                  Positioned(
                    left: 2,
                    child: GestureDetector(
                      onTap: onSpeakerTap,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: isPaper
                              ? AppColors.white
                              : AppColors.lightBackground,
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isPaper
                                ? AppColors.paperBorder
                                : AppColors.grayExtrusion,
                            width: 1.2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.black.withValues(alpha: 0.08),
                              offset: const Offset(0, 1.5),
                              blurRadius: 2,
                            ),
                          ],
                        ),
                        child: Icon(
                          Icons.volume_up_rounded,
                          size: 16,
                          color: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                        ),
                      ),
                    ),
                  ),

                  // Chủ đề & Từ vựng Tiếng Việt mục tiêu (Căn giữa 100%)
                  // Chừa lề đỉnh top: 10 để cách xa đáy đồng hồ
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 38,
                      right: 38,
                      top: 10,
                      bottom: 4,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: AppText.c1(
                            topicText,
                            fontSize: 9.5,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.8,
                            color: isPaper
                                ? AppColors.paperTextMedium
                                : AppColors.grayMedium,
                            maxLines: 1,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: AppText.t2(
                              targetWord,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: isPaper
                                  ? AppColors.paperTextDark
                                  : AppColors.grayDark,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // 2. HUY HIỆU ĐỒNG HỒ NỔI ĐÍNH TRÊN ĐỈNH THẺ (TOP FLOATING BADGE)
          // Nhô cao hơn, chỉ ăn nhẹ 4px vào viền trên
          Positioned(
            top: 0,
            child: AppCountdownTimer(
              seconds: remainingSeconds,
              size: clockSize,
              fontSize: 11,
              isPaper: isPaper,
            ),
          ),
        ],
      ),
    );
  }
}
