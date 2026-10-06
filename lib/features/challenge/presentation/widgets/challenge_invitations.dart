import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Mục Lời mời đến: Danh sách người chơi gửi lời mời
/// hoặc thông báo Chưa có lời mời
class ChallengeInvitations extends StatelessWidget {
  const ChallengeInvitations({
    required this.invitations,
    required this.onAcceptInvitation,
    super.key,
  });

  final List<Invitation> invitations;
  final ValueChanged<String> onAcceptInvitation;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.t3(
          'Lời mời đến',
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
        ),
        SizedBox(height: 3.h),
        if (invitations.isEmpty)
          AppText.b2(
            'Chưa có lời mời mới.',
            fontSize: 10.sp,
            color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
          )
        else
          ...invitations.map(
            (inv) => Container(
              margin: EdgeInsets.only(bottom: 4.h),
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 4.h,
              ),
              decoration: BoxDecoration(
                color: isPaper ? AppColors.paperSurface : AppColors.skySurface,
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(
                  color: isPaper ? AppColors.paperBorder : AppColors.skyBorder,
                ),
                boxShadow: isPaper
                    ? [
                        BoxShadow(
                          color: AppColors.paperExtrusion,
                          offset: Offset(0, 1.h),
                        ),
                      ]
                    : null,
              ),
              child: Row(
                children: [
                  AppAvatar(
                    size: 24.w,
                    borderWidth: 1.2,
                    borderColor: isPaper
                        ? AppColors.paperBorder
                        : AppColors.blueLight,
                  ),
                  SizedBox(width: 6.w),
                  Expanded(
                    child: AppText.b2(
                      '${inv.fromName} mời vào phòng #${inv.roomCode}',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w700,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                    ),
                  ),
                  if (isPaper)
                    AppButton(
                      text: 'VÀO',
                      height: 22.h,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      backgroundColor: AppColors.paperGreen,
                      borderColor: AppColors.paperGreenBorder,
                      extrusionColor: AppColors.paperGreenExtrusion,
                      onPressed: () => onAcceptInvitation(inv.id),
                    )
                  else
                    AppButton.success(
                      text: 'VÀO',
                      height: 22.h,
                      fontSize: 10.sp,
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      onPressed: () => onAcceptInvitation(inv.id),
                    ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
