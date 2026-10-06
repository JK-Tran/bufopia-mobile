import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Mục 5 đối thủ gần nhất: Avatar chuẩn, tên người chơi
/// và nút 3D "Mời" chuẩn AppButton
class ChallengeRivals extends StatelessWidget {
  const ChallengeRivals({
    required this.rivals,
    required this.isRoomCreated,
    required this.onInviteRival,
    super.key,
  });

  final List<RivalEntity> rivals;
  final bool isRoomCreated;
  final ValueChanged<String> onInviteRival;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.t3(
          '5 đối thủ gần nhất',
          fontSize: 10.sp,
          fontWeight: FontWeight.w700,
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
        ),
        SizedBox(height: 3.h),
        if (rivals.isEmpty)
          AppText.b2(
            'Chơi một trận online để lưu đối thủ tại đây.',
            fontSize: 10.sp,
            color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
          )
        else
          ...rivals
              .take(5)
              .map(
                (rival) => Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.5.h),
                  child: Row(
                    children: [
                      // Avatar đối thủ chuẩn AppAvatar
                      AppAvatar(
                        size: 26.w,
                        avatarUrl: rival.avatar,
                        borderWidth: 1.2,
                        borderColor: isPaper
                            ? AppColors.paperBorder
                            : AppColors.blueLight,
                      ),
                      SizedBox(width: 8.w),

                      // Cột thông tin: Tên đối thủ + Ngày đấu
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.b2(
                              rival.name,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: isPaper
                                  ? AppColors.paperTextDark
                                  : AppColors.grayDark,
                            ),
                            AppText.c1(
                              'Đã chơi gần đây',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                              color: isPaper
                                  ? AppColors.paperTextMuted
                                  : AppColors.grayMedium,
                            ),
                          ],
                        ),
                      ),

                      // Nút 3D "Mời" chuẩn AppButton
                      if (isRoomCreated)
                        if (isPaper)
                          AppButton(
                            text: 'Mời',
                            height: 22.h,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            backgroundColor: AppColors.paperGreen,
                            borderColor: AppColors.paperGreenBorder,
                            extrusionColor: AppColors.paperGreenExtrusion,
                            onPressed: () => onInviteRival(rival.uid),
                          )
                        else
                          AppButton.secondary(
                            text: 'Mời',
                            height: 22.h,
                            fontSize: 10.sp,
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            onPressed: () => onInviteRival(rival.uid),
                          )
                      else if (isPaper)
                        AppButton(
                          text: 'Mời',
                          height: 22.h,
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w700,
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          backgroundColor: AppColors.paperSurface,
                          borderColor: AppColors.paperBorder,
                          extrusionColor: AppColors.paperExtrusion,
                          textColor: AppColors.paperTextMuted,
                        )
                      else
                        AppButton.disabled(
                          text: 'Mời',
                          height: 22.h,
                          fontSize: 10.sp,
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                        ),
                    ],
                  ),
                ),
              ),
      ],
    );
  }
}
