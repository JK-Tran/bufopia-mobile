import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_settings_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Khung Header 3D trên cùng của trò chơi Đoán từ khuyết (Word Guess Header)
/// Thiết kế cân đối, căn giữa icon tuyệt đối với AppIconButton:
/// [Nút Back tròn 32r] --- [Tiêu đề + Chấm trạng thái] --- [Cờ] [Cài đặt]
class WordGuessHeader extends StatelessWidget {
  const WordGuessHeader({
    required this.topicTitle,
    required this.isPaperTheme,
    required this.onBack,
    this.onEnd,
    this.playerCount,
    this.onChatPressed,
    this.unreadChatCount = 0,
    this.showChat = true,
    super.key,
  });

  final String topicTitle;
  final bool isPaperTheme;
  final VoidCallback onBack;
  final VoidCallback? onEnd;
  final int? playerCount;
  final VoidCallback? onChatPressed;
  final int unreadChatCount;
  final bool showChat;

  @override
  Widget build(BuildContext context) {
    final titleColor = isPaperTheme
        ? AppColors.paperTextDark
        : AppColors.grayDark;
    final subtitleColor = isPaperTheme
        ? AppColors.paperTextMuted
        : AppColors.grayMedium;

    // Màu nút bấm bên trong khung header
    final btnBg = isPaperTheme
        ? AppColors.paperSurface
        : AppColors.lightBackground;
    final btnBorder = isPaperTheme
        ? AppColors.paperBorder
        : AppColors.grayLight;
    final btnExtrusion = isPaperTheme
        ? AppColors.paperExtrusion
        : AppColors.grayExtrusion;
    final dotColor = isPaperTheme ? AppColors.paperGreenDark : AppColors.green;

    final subtitleText = playerCount != null && playerCount! > 1
        ? '$topicTitle · $playerCount người chơi'
        : topicTitle;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: isPaperTheme ? AppColors.paperCardBg : AppColors.white,
        gradient: isPaperTheme
            ? const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.paperCardGradientStart,
                  AppColors.paperCardGradientEnd,
                ],
              )
            : null,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isPaperTheme ? AppColors.paperBorder : AppColors.classicBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaperTheme
                ? AppColors.paperExtrusion.withValues(alpha: 0.35)
                : AppColors.black.withValues(alpha: 0.08),
            offset: Offset(0, 2.5.h),
            blurRadius: 4.r,
          ),
        ],
      ),
      child: Row(
        children: [
          // 1. Nút quay lại tròn 3D căn giữa tuyệt đối
          AppIconButton(
            icon: Icons.arrow_back_rounded,
            tooltip: 'Quay lại',
            size: 32.r,
            iconSize: 18.r,
            backgroundColor: btnBg,
            borderColor: btnBorder,
            borderWidth: 1.2.w,
            extrusionColor: btnExtrusion,
            extrusionHeight: 2,
            iconColor: titleColor,
            onPressed: onBack,
          ),

          SizedBox(width: 10.w),

          // 2. Tiêu đề phòng đoán từ + Nhãn chủ đề thanh lịch
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.t3(
                  'Đoán từ khuyết',
                  color: titleColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.2,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 6.r,
                      height: 6.r,
                      decoration: BoxDecoration(
                        color: dotColor,
                        shape: BoxShape.circle,
                      ),
                    ),
                    SizedBox(width: 5.w),
                    Flexible(
                      child: AppText.c1(
                        subtitleText,
                        color: subtitleColor,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          SizedBox(width: 8.w),

          // 3. Các nút chức năng góc phải (Chat, Cờ kết thúc & Cài đặt)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showChat && onChatPressed != null) ...[
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AppIconButton(
                      icon: Icons.chat_bubble_outline_rounded,
                      tooltip: 'Trò chuyện',
                      size: 32.r,
                      iconSize: 15.r,
                      backgroundColor: isPaperTheme
                          ? AppColors.paperCardBg
                          : const Color(0xFFFFFBEB),
                      borderColor: const Color(0xFFF59E0B),
                      borderWidth: 1.2.w,
                      extrusionColor: isPaperTheme
                          ? AppColors.paperExtrusion
                          : const Color(0xFFD97706),
                      extrusionHeight: 2,
                      iconColor: const Color(0xFF92400E),
                      onPressed: onChatPressed,
                    ),
                    if (unreadChatCount > 0)
                      Positioned(
                        top: -3.r,
                        right: -3.r,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: unreadChatCount > 9 ? 4.w : 0,
                          ),
                          constraints: BoxConstraints(
                            minWidth: 16.r,
                            minHeight: 16.r,
                          ),
                          decoration: BoxDecoration(
                            color: const Color(0xFFDC2626),
                            shape: unreadChatCount > 9
                                ? BoxShape.rectangle
                                : BoxShape.circle,
                            borderRadius: unreadChatCount > 9
                                ? BorderRadius.circular(8.r)
                                : null,
                            border: Border.all(
                              color: isPaperTheme
                                  ? AppColors.paperCardBg
                                  : AppColors.white,
                              width: 1.5.w,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(
                                  0xFFDC2626,
                                ).withValues(alpha: 0.35),
                                blurRadius: 3.r,
                                offset: Offset(0, 1.h),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: AppText.c1(
                            unreadChatCount > 99 ? '99+' : '$unreadChatCount',
                            color: AppColors.white,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                  ],
                ),
                SizedBox(width: 6.w),
              ],
              if (onEnd != null) ...[
                AppIconButton(
                  icon: Icons.flag_outlined,
                  tooltip: 'Kết thúc ván đấu',
                  size: 32.r,
                  iconSize: 18.r,
                  backgroundColor: isPaperTheme
                      ? AppColors.paperSurface
                      : AppColors.red.withValues(alpha: 0.08),
                  borderColor: isPaperTheme
                      ? AppColors.paperBorder
                      : AppColors.red.withValues(alpha: 0.3),
                  borderWidth: 1.2.w,
                  extrusionColor: isPaperTheme
                      ? AppColors.paperExtrusion
                      : AppColors.redDark.withValues(alpha: 0.25),
                  extrusionHeight: 2,
                  iconColor: AppColors.red,
                  onPressed: onEnd,
                ),
                SizedBox(width: 6.w),
              ],

              // Nút Cài đặt âm thanh / nhạc nền
              AppIconButton(
                icon: Icons.settings_rounded,
                tooltip: 'Cài đặt',
                size: 32.r,
                iconSize: 18.r,
                backgroundColor: btnBg,
                borderColor: btnBorder,
                borderWidth: 1.2.w,
                extrusionColor: btnExtrusion,
                extrusionHeight: 2,
                iconColor: isPaperTheme
                    ? AppColors.paperHeaderIcon
                    : AppColors.sky,
                onPressed: () => HomeSettingsDialog.show(context),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
