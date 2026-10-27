import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/account_import_result.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum ConflictResolutionChoice { merge, overwrite, cancel }

extension on AccountConflict {
  String get displayName =>
      cloudLastActive.isNotEmpty ? cloudLastActive : 'Player';

  int get level => cloudMatches > 0 ? cloudMatches : 1;

  int get xp => cloudElo;
}

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
    final l10n = context.l10n;
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    final cardBg = isPaper ? AppColors.paperSurface : AppColors.lightBackground;
    final cardBorder = isPaper ? AppColors.paperBorder : AppColors.grayLight;
    final textDark = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final textMuted = isPaper
        ? AppColors.paperTextMedium
        : AppColors.grayMedium;

    return AppGameDialog(
      title: l10n.googleCloudSave,
      icon: Icons.cloud_done_rounded,
      maxWidth: 320.w,
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.blueLight, AppColors.blueDark],
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Thẻ tài khoản đám mây gọn gàng
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: cardBg,
              borderRadius: BorderRadius.circular(10.r),
              border: Border.all(color: cardBorder, width: 1.w),
            ),
            child: Row(
              children: [
                Container(
                  width: 36.r,
                  height: 36.r,
                  decoration: BoxDecoration(
                    color: (isPaper ? AppColors.paperGreen : AppColors.blue)
                        .withValues(alpha: 0.15),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.cloud_done_rounded,
                    size: 20.r,
                    color: isPaper ? AppColors.paperGreen : AppColors.blue,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText.t3(
                        conflict.displayName,
                        fontWeight: FontWeight.w700,
                        color: textDark,
                        fontSize: 13.5.sp,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 6.w,
                              vertical: 1.h,
                            ),
                            decoration: BoxDecoration(
                              color: AppColors.orange.withValues(alpha: 0.15),
                              borderRadius: BorderRadius.circular(4.r),
                            ),
                            child: AppText.c1(
                              'Cấp ${conflict.level}',
                              fontWeight: FontWeight.w700,
                              color: AppColors.orangeDark,
                              fontSize: 10.5.sp,
                            ),
                          ),
                          SizedBox(width: 6.w),
                          AppText.c1(
                            '${conflict.xp} XP',
                            color: textMuted,
                            fontSize: 11.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.h),

          AppText.b2(
            l10n.syncCloudPrompt,
            color: textMuted,
            textAlign: TextAlign.center,
            fontSize: 12.sp,
          ),
          SizedBox(height: 12.h),

          // Nút Đồng bộ bản lưu
          AppButton(
            text: l10n.syncCloudSave,
            backgroundColor: isPaper ? AppColors.paperGreen : AppColors.green,
            extrusionColor: isPaper
                ? AppColors.paperGreenExtrusion
                : AppColors.greenDark,
            height: 34.h,
            fontSize: 12.sp,
            onPressed: () =>
                Navigator.of(context).pop(ConflictResolutionChoice.overwrite),
          ),
          SizedBox(height: 4.h),

          // Huỷ
          TextButton(
            onPressed: () =>
                Navigator.of(context).pop(ConflictResolutionChoice.cancel),
            child: AppText.c1(
              l10n.cancel,
              color: textMuted,
            ),
          ),
        ],
      ),
    );
  }
}
