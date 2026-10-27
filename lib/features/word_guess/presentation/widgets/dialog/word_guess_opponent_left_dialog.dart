import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại thông báo khi đối thủ thoát phòng thi đấu
/// Cung cấp 2 lựa chọn:
/// 1. Tự chơi 1 mình (Solo Practice): Ngắt kết nối phòng và chuyển sang chế độ
///    luyện tập tại chỗ
/// 2. Về trang chủ: Ngắt kết nối và quay về màn hình chính
class WordGuessOpponentLeftDialog extends StatelessWidget {
  const WordGuessOpponentLeftDialog({
    required this.onHome,
    required this.onContinueSolo,
    this.rivalName,
    super.key,
    this.isPaperTheme,
  });

  final VoidCallback onHome;
  final VoidCallback onContinueSolo;
  final String? rivalName;
  final bool? isPaperTheme;

  static Future<void> show(
    BuildContext context, {
    required VoidCallback onHome,
    required VoidCallback onContinueSolo,
    String? rivalName,
  }) {
    final isPaper = context.read<AppBloc>().state.isPaperTheme;
    final effectiveRival = (rivalName != null && rivalName.trim().isNotEmpty)
        ? rivalName
        : context.l10n.humanOpponent;

    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return AppGameDialog.show(
      context: context,
      title: context.l10n.opponentLeftTitle,
      icon: Icons.person_off_rounded,
      onClose: onHome,
      maxWidth: isLandscape ? 380.0 : 310.w,
      padding: isLandscape
          ? const EdgeInsets.fromLTRB(16, 10, 16, 10)
          : EdgeInsets.fromLTRB(14.w, 12.h, 14.w, 10.h),
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
        onContinueSolo: onContinueSolo,
        rivalName: effectiveRival,
        isPaperTheme: isPaper,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final isPaper =
        isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final effectiveRival = (rivalName != null && rivalName!.trim().isNotEmpty)
        ? rivalName!
        : l10n.humanOpponent;

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
            Icons.person_off_rounded,
            color: isPaper
                ? AppColors.paperAmberBadgeText
                : AppColors.orangeDark,
            size: 28.r,
          ),
        ),
        SizedBox(height: 12.h),
        AppText.b1(
          l10n.opponentLeftPrompt(effectiveRival),
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
          fontSize: 14.sp,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 18.h),
        // Lựa chọn 2: "Tự chơi 1 mình" (Solo Practice) - Xanh lá
        if (isPaper)
          AppButton(
            text: l10n.continueSolo,
            icon: Icon(
              Icons.play_arrow_rounded,
              size: 18.r,
              color: AppColors.white,
            ),
            width: double.infinity,
            height: 40.h,
            fontSize: 14.sp,
            backgroundColor: AppColors.paperGreen,
            borderColor: AppColors.paperGreenBorder,
            extrusionColor: AppColors.paperGreenExtrusion,
            onPressed: () {
              Navigator.of(context).pop();
              onContinueSolo();
            },
          )
        else
          AppButton.success(
            text: l10n.continueSolo,
            icon: Icon(
              Icons.play_arrow_rounded,
              size: 18.r,
              color: AppColors.white,
            ),
            width: double.infinity,
            height: 40.h,
            fontSize: 14.sp,
            onPressed: () {
              Navigator.of(context).pop();
              onContinueSolo();
            },
          ),
        SizedBox(height: 10.h),
        // Lựa chọn 1: "Kết thúc & Về trang chủ" - Cam
        if (isPaper)
          AppButton(
            text: l10n.backToHome,
            icon: Icon(
              Icons.home_rounded,
              size: 18.r,
              color: AppColors.white,
            ),
            width: double.infinity,
            height: 38.h,
            fontSize: 14.sp,
            backgroundColor: AppColors.modeOnlineButtonDark,
            borderColor: AppColors.modeOnlineBorder,
            extrusionColor: AppColors.modeOnlineButtonExtrusion,
            onPressed: () {
              Navigator.of(context).pop();
              onHome();
            },
          )
        else
          AppButton.orange(
            text: l10n.backToHome,
            icon: Icon(
              Icons.home_rounded,
              size: 18.r,
              color: AppColors.white,
            ),
            width: double.infinity,
            height: 38.h,
            fontSize: 14.sp,
            onPressed: () {
              Navigator.of(context).pop();
              onHome();
            },
          ),
      ],
    );
  }
}
