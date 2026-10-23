import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại xác nhận kết thúc ván đấu sớm hoặc thoát trò chơi.
class WordChainSurrenderDialog extends StatelessWidget {
  const WordChainSurrenderDialog({
    required this.onConfirm,
    super.key,
    this.title,
    this.message,
    this.confirmText,
    this.cancelText,
  });

  final VoidCallback onConfirm;
  final String? title;
  final String? message;
  final String? confirmText;
  final String? cancelText;

  static Future<void> show(
    BuildContext context, {
    required VoidCallback onConfirm,
    String? title,
    String? message,
    String? confirmText,
    String? cancelText,
  }) {
    final l10n = context.l10n;
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (_) => WordChainSurrenderDialog(
        onConfirm: onConfirm,
        title: title ?? l10n.earlyEndTitle,
        message: message ?? l10n.surrenderConfirmDesc,
        confirmText: confirmText ?? l10n.confirm,
        cancelText: cancelText ?? l10n.stay,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    var isPopping = false;

    final l10n = context.l10n;
    final dialogBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final dialogBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final titleColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final bodyColor = isPaper ? AppColors.paperTextMuted : AppColors.grayMedium;

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 340.w),
          child: Container(
            padding: EdgeInsets.fromLTRB(18.w, 14.h, 18.w, 18.h),
            decoration: BoxDecoration(
              color: dialogBg,
              borderRadius: BorderRadius.circular(20.r),
              border: Border.all(
                color: dialogBorder,
                width: 2.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.black.withValues(alpha: 0.15),
                  offset: Offset(0, 4.h),
                  blurRadius: 8.r,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header: Tiêu đề + Nút đóng tròn đỏ
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppText.t2(
                      title ?? l10n.earlyEndTitle,
                      color: titleColor,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                    ),
                    AppButton.close(
                      onPressed: () {
                        if (isPopping) return;
                        isPopping = true;
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                // Nội dung xác nhận
                AppText.b2(
                  message ?? l10n.surrenderConfirmDesc,
                  color: bodyColor,
                  fontSize: 12.sp,
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 16.h),

                // Hàng nút: Ở lại / Xác nhận
                Row(
                  children: [
                    Expanded(
                      child: AppButton.secondary(
                        text: cancelText ?? l10n.stay,
                        height: 38.h,
                        fontSize: 14.sp,
                        onPressed: () {
                          if (isPopping) return;
                          isPopping = true;
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Expanded(
                      child: AppButton.danger(
                        text: confirmText ?? l10n.confirm,
                        height: 38.h,
                        fontSize: 14.sp,
                        onPressed: () {
                          if (isPopping) return;
                          isPopping = true;
                          Navigator.of(context).pop();
                          onConfirm();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
