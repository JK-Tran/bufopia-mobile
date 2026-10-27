import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại yêu cầu đăng nhập Google khi người chơi nhấn vào các tính năng Online / Phòng ID
class AppLoginPromptDialog extends StatelessWidget {
  const AppLoginPromptDialog({
    super.key,
    this.featureName,
  });

  final String? featureName;

  static Future<void> show(
    BuildContext context, {
    String? featureName,
  }) {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    return AppDialog.show(
      context,
      title: context.l10n.loginPromptTitle,
      leading: Container(
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: AppColors.orange.withValues(alpha: 0.15),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.lock_rounded,
          color: AppColors.orange,
          size: 16.r,
        ),
      ),
      child: AppLoginPromptDialog(featureName: featureName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>(
      (bloc) => bloc.state.isPaperTheme,
    );

    final titleColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final bodyColor = isPaper
        ? AppColors.paperTextMedium
        : AppColors.grayMedium;
    final featureText = featureName ?? context.l10n.defaultOnlineModeName;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SizedBox(height: 8.h),

        // Biểu tượng ổ khóa 3D nổi bật
        Center(
          child: Container(
            width: 58.r,
            height: 58.r,
            decoration: BoxDecoration(
              color: isPaper
                  ? AppColors.paperAmberBadgeBg
                  : AppColors.orange.withValues(alpha: 0.12),
              shape: BoxShape.circle,
              border: Border.all(
                color: isPaper
                    ? AppColors.paperAmberBadgeBorder
                    : AppColors.orange.withValues(alpha: 0.35),
                width: 2.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: isPaper
                      ? AppColors.paperExtrusion
                      : AppColors.orange.withValues(alpha: 0.2),
                  blurRadius: 10.r,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            child: Icon(
              Icons.lock_person_rounded,
              size: 30.r,
              color: isPaper ? AppColors.paperAmberBadgeText : AppColors.orange,
            ),
          ),
        ),

        SizedBox(height: 14.h),

        // Tiêu đề giải thích
        AppText.t3(
          context.l10n.loginToUnlock,
          textAlign: TextAlign.center,
          fontSize: 14.sp,
          fontWeight: FontWeight.w700,
          color: titleColor,
        ),

        SizedBox(height: 6.h),

        // Nội dung chi tiết
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: AppText.c1(
            context.l10n.loginPromptDesc(featureText),
            textAlign: TextAlign.center,
            color: bodyColor,
            fontSize: 10.sp,
          ),
        ),

        SizedBox(height: 20.h),

        // 2 nút: Để sau & Đăng nhập Google
        Row(
          children: [
            Expanded(
              flex: 4,
              child: AppButton.secondary(
                text: context.l10n.maybeLater,
                fontSize: 12.sp,
                height: 38.h,
                onPressed: () {
                  context.read<AppBloc>().add(
                    const AppEvent.clickSoundPlayed(),
                  );
                  Navigator.of(context).pop();
                },
              ),
            ),
            SizedBox(width: 8.w),
            Expanded(
              flex: 6,
              child: AppButton(
                icon: Icon(
                  Icons.cloud_sync_rounded,
                  size: 16.r,
                  color: AppColors.white,
                ),
                text: context.l10n.loginGoogle,
                backgroundColor: isPaper
                    ? AppColors.paperGreen
                    : AppColors.blue,
                extrusionColor: isPaper
                    ? AppColors.paperGreenExtrusion
                    : AppColors.blueDeep,
                fontSize: 12.sp,
                height: 38.h,
                onPressed: () {
                  context.read<AppBloc>().add(
                    const AppEvent.clickSoundPlayed(),
                  );
                  Navigator.of(context).pop();
                  context.read<AuthBloc>().add(
                    const AuthEvent.signInWithGoogle(),
                  );
                },
              ),
            ),
          ],
        ),

        SizedBox(height: 4.h),
      ],
    );
  }
}
