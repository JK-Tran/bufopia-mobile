import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/account_import_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ConflictResolutionChoice { merge, overwrite, cancel }

class AccountConflictDialog extends StatelessWidget {
  const AccountConflictDialog({
    required this.conflict,
    super.key,
  });

  final AccountConflict conflict;

  static Future<ConflictResolutionChoice?> show(
    BuildContext context, {
    required AccountConflict conflict,
  }) {
    return showDialog<ConflictResolutionChoice>(
      context: context,
      barrierDismissible: false,
      builder: (_) => AccountConflictDialog(conflict: conflict),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final cardBg = isPaper ? AppColors.paperSurface : AppColors.lightBackground;
    final cardBorder = isPaper ? AppColors.paperBorder : AppColors.grayLight;
    final textDark = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final textMuted = isPaper
        ? AppColors.paperTextMedium
        : AppColors.grayMedium;

    return AppGameDialog(
      title: 'Xung đột tài khoản',
      icon: Icons.sync_problem_rounded,
      maxWidth: 340.w,
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.blueLight, AppColors.blueDark],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AppText.b2(
            conflict.message.isNotEmpty
                ? conflict.message
                : 'Tài khoản Google này đã có dữ liệu lưu trữ đám mây.',
            color: textDark,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),

          // Thông tin tài khoản Google đám mây
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: cardBg,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: cardBorder, width: 1.w),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.cloud_done_rounded,
                      size: 18.w,
                      color: isPaper ? AppColors.paperGreen : AppColors.blue,
                    ),
                    SizedBox(width: 6.w),
                    AppText.t3(
                      'Bản lưu trên Google',
                      fontWeight: FontWeight.w700,
                      color: textDark,
                      fontSize: 14.sp,
                    ),
                  ],
                ),
                SizedBox(height: 6.h),
                if (conflict.cloudElo > 0)
                  AppText.b2(
                    'Điểm Elo: ${conflict.cloudElo}',
                    color: textMuted,
                  ),
                if (conflict.cloudMatches > 0)
                  AppText.b2(
                    'Số trận đã đấu: ${conflict.cloudMatches}',
                    color: textMuted,
                  ),
                if (conflict.cloudLastActive.isNotEmpty)
                  AppText.b2(
                    'Hoạt động gần nhất: ${conflict.cloudLastActive}',
                    color: textMuted,
                  ),
              ],
            ),
          ),
          SizedBox(height: 14.h),

          // Nút Gộp dữ liệu (Merge)
          AppButton(
            text: 'GỘP TIẾN ĐỘ (KHUYÊN DÙNG)',
            backgroundColor: isPaper ? AppColors.paperGreen : AppColors.green,
            extrusionColor: isPaper
                ? AppColors.paperGreenExtrusion
                : AppColors.greenDark,
            fontSize: 12.sp,
            onPressed: () =>
                Navigator.of(context).pop(ConflictResolutionChoice.merge),
          ),
          SizedBox(height: 8.h),

          // Nút Dùng bản lưu đám mây (Overwrite)
          AppButton.secondary(
            text: 'Dùng dữ liệu đám mây (Ghi đè)',
            fontSize: 12.sp,
            onPressed: () =>
                Navigator.of(context).pop(ConflictResolutionChoice.overwrite),
          ),
          SizedBox(height: 6.h),

          // Huỷ
          TextButton(
            onPressed: () =>
                Navigator.of(context).pop(ConflictResolutionChoice.cancel),
            child: AppText.c1(
              'Huỷ bỏ',
              color: textMuted,
            ),
          ),
        ],
      ),
    );
  }
}
