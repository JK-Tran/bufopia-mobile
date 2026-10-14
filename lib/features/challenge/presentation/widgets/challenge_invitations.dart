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
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final titleFontSize = isLandscape ? 12.0 : 12.sp;
    final emptyFontSize = isLandscape ? 11.5 : 11.sp;
    final textFontSize = isLandscape ? 12.0 : 12.sp;
    final btnHeight = isLandscape ? 28.0 : 28.h;
    final btnFontSize = isLandscape ? 11.0 : 11.sp;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.t3(
          'Lời mời đến',
          fontSize: titleFontSize,
          fontWeight: FontWeight.w700,
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
        ),
        SizedBox(height: isLandscape ? 4.0 : 4.h),
        if (invitations.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: isLandscape ? 2.0 : 2.h),
            child: AppText.b2(
              'Chưa có lời mời mới.',
              fontSize: emptyFontSize,
              color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
            ),
          )
        else
          ...invitations.map(
            (inv) => Container(
              margin: EdgeInsets.only(bottom: isLandscape ? 6.0 : 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: isLandscape ? 10.0 : 8.w,
                vertical: isLandscape ? 6.0 : 5.h,
              ),
              decoration: BoxDecoration(
                color: isPaper ? AppColors.paperSurface : AppColors.skySurface,
                borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 7.r),
                border: Border.all(
                  color: isPaper ? AppColors.paperBorder : AppColors.skyBorder,
                ),
                boxShadow: isPaper
                    ? const [
                        BoxShadow(
                          color: AppColors.paperExtrusion,
                          offset: Offset(0, 1.5),
                        ),
                      ]
                    : null,
              ),
              child: Row(
                children: [
                  AppAvatar(
                    size: isLandscape ? 30.0 : 28.w,
                    borderWidth: 1.2,
                    borderColor: isPaper
                        ? AppColors.paperBorder
                        : AppColors.blueLight,
                  ),
                  SizedBox(width: isLandscape ? 8.0 : 8.w),
                  Expanded(
                    child: AppText.b2(
                      '${inv.fromName} mời vào phòng #${inv.roomCode}',
                      fontSize: textFontSize,
                      fontWeight: FontWeight.w700,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                    ),
                  ),
                  if (isPaper)
                    AppButton(
                      text: 'VÀO',
                      height: btnHeight,
                      fontSize: btnFontSize,
                      fontWeight: FontWeight.w700,
                      padding: EdgeInsets.symmetric(
                        horizontal: isLandscape ? 14.0 : 12.w,
                      ),
                      borderRadius: BorderRadius.circular(
                        isLandscape ? 8.0 : 7.r,
                      ),
                      backgroundColor: AppColors.paperGreen,
                      borderColor: AppColors.paperGreenBorder,
                      extrusionColor: AppColors.paperGreenExtrusion,
                      onPressed: () => onAcceptInvitation(inv.id),
                    )
                  else
                    AppButton.success(
                      text: 'VÀO',
                      height: btnHeight,
                      fontSize: btnFontSize,
                      padding: EdgeInsets.symmetric(
                        horizontal: isLandscape ? 14.0 : 12.w,
                      ),
                      borderRadius: BorderRadius.circular(
                        isLandscape ? 8.0 : 7.r,
                      ),
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
