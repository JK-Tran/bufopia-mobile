import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Khung nhập từ dưới đáy màn hình của phòng nối từ.
class WordChainInputBar extends StatelessWidget {
  const WordChainInputBar({
    required this.controller,
    required this.isMyTurn,
    required this.isCheckingWord,
    required this.isGameOver,
    required this.requiredLetter,
    required this.onChanged,
    required this.onSubmit,
    this.focusNode,
    super.key,
  });

  final TextEditingController controller;
  final FocusNode? focusNode;
  final bool isMyTurn;
  final bool isCheckingWord;
  final bool isGameOver;
  final String requiredLetter;
  final ValueChanged<String> onChanged;
  final VoidCallback onSubmit;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final letter = requiredLetter.trim().toUpperCase();
    final hintText = letter.isNotEmpty
        ? l10n.enterWordStartingWith(letter)
        : l10n.enterWordToStart;

    final isInputEnabled = isMyTurn && !isCheckingWord && !isGameOver;

    final inputBg = isPaper ? AppColors.paperCardBg : AppColors.white;
    final inputBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final textColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final hintColor = isPaper ? AppColors.paperTextMuted : AppColors.grayMedium;

    return Padding(
      padding: EdgeInsets.fromLTRB(10.w, 4.h, 10.w, 10.h),
      child: Row(
        children: [
          // Ô gõ từ vựng
          Expanded(
            child: Container(
              height: 44.h,
              decoration: BoxDecoration(
                color: inputBg,
                borderRadius: BorderRadius.circular(14.r),
                border: Border.all(
                  color: isInputEnabled
                      ? (isPaper ? AppColors.paperGreen : AppColors.primary)
                      : inputBorder,
                  width: 1.5.w,
                ),
                boxShadow: [
                  BoxShadow(
                    color: isPaper
                        ? AppColors.paperExtrusion.withValues(alpha: 0.25)
                        : AppColors.black.withValues(alpha: 0.04),
                    offset: Offset(0, 2.h),
                    blurRadius: 3.r,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              alignment: Alignment.center,
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                enabled: isInputEnabled,
                autocorrect: false,
                textInputAction: TextInputAction.send,
                onChanged: onChanged,
                onSubmitted: (_) {
                  if (isInputEnabled && controller.text.trim().isNotEmpty) {
                    onSubmit();
                  }
                },
                style: TextStyle(
                  color: textColor,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: TextStyle(
                    color: hintColor,
                    fontSize: 12.sp,
                  ),
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.zero,
                ),
              ),
            ),
          ),

          SizedBox(width: 8.w),

          // Nút Gửi 3D
          ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (_, value, _) {
              final canSend = isInputEnabled && value.text.trim().isNotEmpty;
              if (isPaper) {
                return AppButton(
                  text: l10n.send,
                  height: 44.h,
                  width: 72.w,
                  fontSize: 14.sp,
                  backgroundColor: AppColors.paperGreen,
                  borderColor: AppColors.paperGreenBorder,
                  extrusionColor: AppColors.paperGreenExtrusion,
                  isLoading: isCheckingWord,
                  icon: isCheckingWord
                      ? null
                      : Icon(
                          Icons.send_rounded,
                          size: 16.r,
                          color: AppColors.white,
                        ),
                  onPressed: canSend ? onSubmit : null,
                );
              }
              return AppButton.success(
                text: l10n.send,
                height: 44.h,
                width: 72.w,
                fontSize: 14.sp,
                isLoading: isCheckingWord,
                icon: isCheckingWord
                    ? null
                    : Icon(
                        Icons.send_rounded,
                        size: 16.r,
                        color: AppColors.white,
                      ),
                onPressed: canSend ? onSubmit : null,
              );
            },
          ),
        ],
      ),
    );
  }
}
