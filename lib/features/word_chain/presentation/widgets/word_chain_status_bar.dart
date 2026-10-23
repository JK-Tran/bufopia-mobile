import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Thanh trạng thái phụ: hiển thị đếm ngược thời gian, lượt đi hiện tại
/// và các nút chức năng (Chat, Kết thúc ván sớm).
class WordChainStatusBar extends StatelessWidget {
  const WordChainStatusBar({
    required this.remainingSeconds,
    required this.isMyTurn,
    required this.relaxed,
    super.key,
    this.onChatPressed,
    this.onSurrenderPressed,
  });

  final int remainingSeconds;
  final bool isMyTurn;
  final bool relaxed;
  final VoidCallback? onChatPressed;
  final VoidCallback? onSurrenderPressed;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final pillBg = isPaper
        ? AppColors.paperGreen.withValues(alpha: 0.15)
        : AppColors.green.withValues(alpha: 0.12);
    final timerColor = isPaper ? AppColors.paperGreenDark : AppColors.green;
    final subColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final btnBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final btnBorder = isPaper ? AppColors.paperBorder : AppColors.classicBorder;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      child: Row(
        children: [
          // Badge thời gian & lượt
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: pillBg,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: timerColor.withValues(alpha: 0.3),
                width: 1.w,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.timer_outlined,
                  size: 14.r,
                  color: timerColor,
                ),
                SizedBox(width: 4.w),
                if (!relaxed) ...[
                  AppText.b2(
                    '${context.l10n.remainingSecondsFormat(remainingSeconds)} ',
                    color: timerColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ],
                AppText.c1(
                  relaxed
                      ? context.l10n.relaxedUnlimited
                      : (isMyTurn
                            ? context.l10n.yourTurn
                            : context.l10n.partnerTurn),
                  color: subColor,
                  fontSize: 10.sp,
                ),
              ],
            ),
          ),

          const Spacer(),

          // Nút Chat
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onChatPressed,
              borderRadius: BorderRadius.circular(10.r),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: btnBg,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: btnBorder,
                    width: 1.w,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.chat_bubble_outline_rounded,
                      size: 13.r,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                    ),
                    SizedBox(width: 4.w),
                    AppText.c1(
                      context.l10n.chat,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(width: 6.w),

          // Nút Kết thúc
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onSurrenderPressed,
              borderRadius: BorderRadius.circular(10.r),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  color: btnBg,
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: btnBorder,
                    width: 1.w,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.flag_outlined,
                      size: 13.r,
                      color: AppColors.red,
                    ),
                    SizedBox(width: 4.w),
                    AppText.c1(
                      context.l10n.endTurn,
                      color: AppColors.red,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
