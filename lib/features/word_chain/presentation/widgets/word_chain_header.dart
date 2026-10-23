import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_chain/presentation/bloc/word_chain_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Header thanh điều hướng trên cùng của phòng nối từ (Word Chain).
class WordChainHeader extends StatelessWidget {
  const WordChainHeader({
    super.key,
    this.mode = WordChainGameMode.bot,
    this.roomCode,
    this.relaxed = false,
    this.unreadChatCount = 0,
    this.onBackPressed,
    this.onChatPressed,
    this.onSurrenderPressed,
    this.onRematch,
  });

  final WordChainGameMode mode;
  final String? roomCode;
  final bool relaxed;
  final int unreadChatCount;
  final VoidCallback? onBackPressed;
  final VoidCallback? onChatPressed;
  final VoidCallback? onSurrenderPressed;
  final VoidCallback? onRematch;

  String _getSubtitleText(BuildContext context) {
    if (relaxed) return context.l10n.relaxedPractice;
    switch (mode) {
      case WordChainGameMode.bot:
        return context.l10n.practiceBot;
      case WordChainGameMode.online:
      case WordChainGameMode.room:
        return context.l10n.menuWordChainSubtitle;
    }
  }

  Color _getStatusDotColor(bool isPaper) {
    if (relaxed) {
      return AppColors.blue;
    }
    switch (mode) {
      case WordChainGameMode.bot:
        return AppColors.gold;
      case WordChainGameMode.online:
      case WordChainGameMode.room:
        return isPaper ? AppColors.paperGreenDark : AppColors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final titleColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final subtitleColor = isPaper
        ? AppColors.paperTextMuted
        : AppColors.grayMedium;
    final btnBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final btnBorder = isPaper ? AppColors.paperBorder : AppColors.grayLight;
    final btnExtrusion = isPaper
        ? AppColors.paperExtrusion
        : AppColors.grayExtrusion;

    final dotColor = _getStatusDotColor(isPaper);
    final subtitleText = _getSubtitleText(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      child: Row(
        children: [
          // 1. Nút quay lại tròn 3D
          if (onBackPressed != null) ...[
            AppButton(
              onPressed: onBackPressed,
              shape: BoxShape.circle,
              width: 32.r,
              height: 32.r,
              backgroundColor: btnBg,
              borderColor: btnBorder,
              extrusionColor: btnExtrusion,
              child: Icon(
                Icons.arrow_back_rounded,
                size: 16.r,
                color: titleColor,
              ),
            ),
            SizedBox(width: 8.w),
          ],

          // 2. Tiêu đề phòng nối từ + chế độ chơi
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.t3(
                  context.l10n.wordChainTitle,
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
                    SizedBox(width: 4.w),
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

          SizedBox(width: 6.w),

          // 3. Các nút chức năng góc phải (Làm mới, Chat, Đầu hàng)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onRematch != null) ...[
                AppButton(
                  onPressed: onRematch,
                  shape: BoxShape.circle,
                  width: 32.r,
                  height: 32.r,
                  backgroundColor: btnBg,
                  borderColor: btnBorder,
                  extrusionColor: btnExtrusion,
                  child: Icon(
                    Icons.refresh_rounded,
                    size: 16.r,
                    color: isPaper
                        ? AppColors.paperGreenDark
                        : AppColors.primary,
                  ),
                ),
                SizedBox(width: 6.w),
              ],
              if (onChatPressed != null && mode != WordChainGameMode.bot) ...[
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    AppButton(
                      onPressed: onChatPressed,
                      shape: BoxShape.circle,
                      width: 32.r,
                      height: 32.r,
                      backgroundColor: isPaper
                          ? AppColors.paperCardBg
                          : const Color(0xFFFFFBEB),
                      borderColor: const Color(0xFFF59E0B),
                      extrusionColor: isPaper
                          ? AppColors.paperExtrusion
                          : const Color(0xFFD97706),
                      child: Icon(
                        Icons.chat_bubble_outline_rounded,
                        size: 15.r,
                        color: const Color(0xFF92400E),
                      ),
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
                              color: isPaper
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
              if (onSurrenderPressed != null)
                AppButton(
                  onPressed: onSurrenderPressed,
                  shape: BoxShape.circle,
                  width: 32.r,
                  height: 32.r,
                  backgroundColor: isPaper
                      ? AppColors.paperCardBg
                      : AppColors.red.withValues(alpha: 0.08),
                  borderColor: AppColors.red.withValues(alpha: 0.3),
                  extrusionColor: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.redDark.withValues(alpha: 0.25),
                  child: Icon(
                    Icons.flag_outlined,
                    size: 15.r,
                    color: AppColors.red,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
