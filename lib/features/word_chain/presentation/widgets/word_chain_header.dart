import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/word_chain/presentation/bloc/word_chain_bloc.dart';
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
    this.onBackPressed,
    this.onChatPressed,
    this.onSurrenderPressed,
    this.onRematch,
  });

  final WordChainGameMode mode;
  final String? roomCode;
  final bool relaxed;
  final VoidCallback? onBackPressed;
  final VoidCallback? onChatPressed;
  final VoidCallback? onSurrenderPressed;
  final VoidCallback? onRematch;

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

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
      child: Row(
        children: [
          // 1. Nút quay lại tròn 3D
          if (onBackPressed != null)
            AppButton(
              onPressed: onBackPressed,
              shape: BoxShape.circle,
              width: 36.r,
              height: 36.r,
              backgroundColor: btnBg,
              borderColor: btnBorder,
              extrusionColor: btnExtrusion,
              child: Icon(
                Icons.arrow_back_rounded,
                size: 18.r,
                color: titleColor,
              ),
            ),

          SizedBox(width: 10.w),

          // 2. Tiêu đề phòng nối từ + chế độ chơi
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: AppText.t2(
                        'Phòng nối từ',
                        color: titleColor,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w700,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppText.c1(
                      'Nối từ tự do - Học qua ngữ cảnh ',
                      color: subtitleColor,
                      fontSize: 10.sp,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // 3. Các nút chức năng góc phải (Làm mới, Chat, Đầu hàng)
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (onRematch != null) ...[
                AppButton(
                  onPressed: onRematch,
                  shape: BoxShape.circle,
                  width: 34.r,
                  height: 34.r,
                  backgroundColor: btnBg,
                  borderColor: btnBorder,
                  extrusionColor: btnExtrusion,
                  child: Icon(
                    Icons.refresh_rounded,
                    size: 17.r,
                    color: isPaper
                        ? AppColors.paperGreenDark
                        : AppColors.primary,
                  ),
                ),
                SizedBox(width: 6.w),
              ],
              if (onChatPressed != null && mode != WordChainGameMode.bot) ...[
                AppButton(
                  onPressed: onChatPressed,
                  shape: BoxShape.circle,
                  width: 34.r,
                  height: 34.r,
                  backgroundColor: btnBg,
                  borderColor: btnBorder,
                  extrusionColor: btnExtrusion,
                  child: Icon(
                    Icons.chat_bubble_outline_rounded,
                    size: 16.r,
                    color: titleColor,
                  ),
                ),
                SizedBox(width: 6.w),
              ],
              if (onSurrenderPressed != null)
                AppButton(
                  onPressed: onSurrenderPressed,
                  shape: BoxShape.circle,
                  width: 34.r,
                  height: 34.r,
                  backgroundColor: isPaper
                      ? AppColors.paperCardBg
                      : AppColors.red.withValues(alpha: 0.1),
                  borderColor: AppColors.red.withValues(alpha: 0.35),
                  extrusionColor: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.redDark.withValues(alpha: 0.3),
                  child: Icon(
                    Icons.flag_outlined,
                    size: 16.r,
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
