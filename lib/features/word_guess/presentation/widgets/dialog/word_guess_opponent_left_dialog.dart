import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại thông báo khi đối thủ thoát phòng thi đấu
class WordGuessOpponentLeftDialog extends StatelessWidget {
  const WordGuessOpponentLeftDialog({
    required this.onHome,
    super.key,
    this.isPaperTheme,
  });

  final VoidCallback onHome;
  final bool? isPaperTheme;

  static Future<void> show(
    BuildContext context, {
    required VoidCallback onHome,
  }) {
    final isPaper = context.read<AppBloc>().state.isPaperTheme;

    return AppGameDialog.show(
      context: context,
      title: 'ĐỐI THỦ ĐÃ RỜI PHÒNG',
      maxWidth: 340.w,
      maxHeight: 280.h,
      isScrollable: false,
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.orange,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.orangeLight, AppColors.orangeDark],
      boxShadow: isPaper
          ? [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.12),
                blurRadius: 16.r,
                offset: Offset(0, 8.h),
              ),
            ]
          : null,
      child: WordGuessOpponentLeftDialog(
        onHome: onHome,
        isPaperTheme: isPaper,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper =
        isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 52.r,
          height: 52.r,
          decoration: BoxDecoration(
            color: isPaper
                ? AppColors.paperAmberBadgeBg
                : AppColors.orange.withValues(alpha: 0.15),
            shape: BoxShape.circle,
            border: Border.all(
              color: isPaper
                  ? AppColors.paperAmberBadgeBorder
                  : AppColors.orange.withValues(alpha: 0.5),
              width: 2.w,
            ),
          ),
          child: Icon(
            Icons.emoji_events_rounded,
            color: isPaper
                ? AppColors.paperAmberBadgeText
                : AppColors.orangeDark,
            size: 28.r,
          ),
        ),
        SizedBox(height: 10.h),
        AppText.t2(
          'CHIẾN THẮNG DANH DỰ! 🏆',
          color: isPaper ? AppColors.paperTextDark : AppColors.orangeDark,
          fontWeight: FontWeight.w700,
        ),
        SizedBox(height: 4.h),
        AppText.b2(
          'Đối thủ đã thoát khỏi trận đấu giữa chừng.\n'
          'Chiến thắng thuộc về bạn!',
          color: isPaper ? AppColors.paperTextMedium : AppColors.grayDark,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 14.h),
        if (isPaper)
          AppButton(
            text: 'VỀ TRANG CHỦ',
            icon: Icon(
              Icons.home_rounded,
              size: 18.r,
              color: AppColors.white,
            ),
            width: 200.w,
            height: 40.h,
            backgroundColor: AppColors.paperGreen,
            borderColor: AppColors.paperGreenBorder,
            extrusionColor: AppColors.paperGreenExtrusion,
            onPressed: () {
              Navigator.of(context).pop();
              onHome();
            },
          )
        else
          AppButton.orange(
            text: 'VỀ TRANG CHỦ',
            icon: Icon(
              Icons.home_rounded,
              size: 18.r,
              color: AppColors.white,
            ),
            width: 200.w,
            height: 40.h,
            onPressed: () {
              Navigator.of(context).pop();
              onHome();
            },
          ),
      ],
    );
  }
}
