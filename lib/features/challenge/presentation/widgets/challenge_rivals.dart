import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/challenge/domain/entities/social_state.dart';
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

  final List<Rival> rivals;
  final bool isRoomCreated;
  final ValueChanged<String> onInviteRival;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final titleFontSize = isLandscape ? 12.0 : 12.sp;
    final emptyFontSize = isLandscape ? 11.5 : 11.sp;
    final nameFontSize = isLandscape ? 13.0 : 12.5.sp;
    final subFontSize = isLandscape ? 10.5 : 10.sp;
    final avatarSize = isLandscape ? 34.0 : 32.w;
    final btnHeight = isLandscape ? 28.0 : 28.h;
    final btnFontSize = isLandscape ? 11.5 : 11.sp;
    final btnPad = EdgeInsets.symmetric(
      horizontal: isLandscape ? 14.0 : 12.w,
    );
    final itemPad = EdgeInsets.symmetric(
      vertical: isLandscape ? 4.0 : 3.h,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText.t3(
          '5 đối thủ gần nhất',
          fontSize: titleFontSize,
          fontWeight: FontWeight.w700,
          color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
        ),
        SizedBox(height: isLandscape ? 4.0 : 4.h),
        if (rivals.isEmpty)
          Padding(
            padding: EdgeInsets.symmetric(vertical: isLandscape ? 2.0 : 2.h),
            child: AppText.b2(
              'Chơi một trận online để lưu đối thủ tại đây.',
              fontSize: emptyFontSize,
              color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
            ),
          )
        else
          ...rivals
              .take(5)
              .map(
                (rival) => Padding(
                  padding: itemPad,
                  child: Row(
                    children: [
                      // Avatar đối thủ chuẩn AppAvatar
                      AppAvatar(
                        size: avatarSize,
                        avatarUrl: rival.avatar,
                        borderWidth: 1.2,
                        borderColor: isPaper
                            ? AppColors.paperBorder
                            : AppColors.blueLight,
                      ),
                      SizedBox(width: isLandscape ? 10.0 : 8.w),

                      // Cột thông tin: Tên đối thủ + Ngày đấu
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText.b2(
                              rival.name,
                              fontSize: nameFontSize,
                              fontWeight: FontWeight.w700,
                              color: isPaper
                                  ? AppColors.paperTextDark
                                  : AppColors.grayDark,
                            ),
                            AppText.c1(
                              'Đã chơi gần đây',
                              fontSize: subFontSize,
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
                            height: btnHeight,
                            fontSize: btnFontSize,
                            fontWeight: FontWeight.w700,
                            padding: btnPad,
                            borderRadius: BorderRadius.circular(
                              isLandscape ? 8.0 : 7.r,
                            ),
                            backgroundColor: AppColors.paperGreen,
                            borderColor: AppColors.paperGreenBorder,
                            extrusionColor: AppColors.paperGreenExtrusion,
                            onPressed: () => onInviteRival(rival.uid),
                          )
                        else
                          AppButton.secondary(
                            text: 'Mời',
                            height: btnHeight,
                            fontSize: btnFontSize,
                            padding: btnPad,
                            borderRadius: BorderRadius.circular(
                              isLandscape ? 8.0 : 7.r,
                            ),
                            onPressed: () => onInviteRival(rival.uid),
                          )
                      else if (isPaper)
                        AppButton(
                          text: 'Mời',
                          height: btnHeight,
                          fontSize: btnFontSize,
                          fontWeight: FontWeight.w700,
                          padding: btnPad,
                          borderRadius: BorderRadius.circular(
                            isLandscape ? 8.0 : 7.r,
                          ),
                          backgroundColor: AppColors.paperSurface,
                          borderColor: AppColors.paperBorder,
                          extrusionColor: AppColors.paperExtrusion,
                          textColor: AppColors.paperTextMuted,
                        )
                      else
                        AppButton.disabled(
                          text: 'Mời',
                          height: btnHeight,
                          fontSize: btnFontSize,
                          padding: btnPad,
                          borderRadius: BorderRadius.circular(
                            isLandscape ? 8.0 : 7.r,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
      ],
    );
  }
}
