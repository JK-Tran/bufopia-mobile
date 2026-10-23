import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Tạo phòng thách đấu
/// (Hiển thị 6 số phòng 3D chuẩn Web + 3 nút: Chép mã / Chép link / Hủy)
/// Tuân thủ nghiêm ngặt AppText, AppColors và ui_guidelines.md
class ChallengeCreate extends StatelessWidget {
  const ChallengeCreate({
    required this.createdRoomCode,
    required this.onCreateRoom,
    required this.onCancelRoom,
    this.onEnterRoom,
    super.key,
  });

  final String? createdRoomCode;
  final VoidCallback onCreateRoom;
  final VoidCallback onCancelRoom;
  final ValueChanged<String>? onEnterRoom;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    if (createdRoomCode == null) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: isLandscape ? 4.0 : 4.h),
        child: AppButton(
          text: context.l10n.createRoomNow,
          icon: Icon(
            Icons.sensors_rounded,
            size: isLandscape ? 16.0 : 14.r,
            color: AppColors.white,
          ),
          width: double.infinity,
          height: isLandscape ? 40.0 : 40.h,
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          spacing: 8,
          backgroundColor: isPaper
              ? AppColors.paperGreen
              : AppColors.modeBotButton,
          borderColor: isPaper
              ? AppColors.paperGreenBorder
              : AppColors.white.withValues(alpha: 0.35),
          extrusionColor: isPaper
              ? AppColors.paperGreenExtrusion
              : AppColors.modeBotButtonExtrusion,
          extrusionHeight: 2,
          borderRadius: BorderRadius.circular(isLandscape ? 10.0 : 10.r),
          fontSize: isLandscape ? 12.0 : 12.sp,
          onPressed: onCreateRoom,
        ),
      );
    }

    final code = createdRoomCode!;
    final digits = code.split('');
    final statusColor = isPaper
        ? AppColors.paperGreenDark
        : AppColors.modeBotButtonDark;

    final btnHeight = isLandscape ? 30.0 : 30.h;
    final btnFontSize = isLandscape ? 12.0 : 12.sp;
    final iconSize = isLandscape ? 13.0 : 13.r;
    final btnPad = EdgeInsets.symmetric(horizontal: isLandscape ? 12.0 : 10.w);
    final btnSpacing = isLandscape ? 8.0 : 6.w;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isLandscape ? 12.0 : 10.w,
        vertical: isLandscape ? 10.0 : 8.h,
      ),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.topicEasyBg,
        borderRadius: BorderRadius.circular(isLandscape ? 12.0 : 12.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.modeBotShadow,
          width: 1.2,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Dòng trạng thái: Chấm xanh + CHỜ ĐỐI THỦ VÀO...
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: isLandscape ? 8.0 : 8.r,
                height: isLandscape ? 8.0 : 8.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: statusColor,
                ),
              ),
              SizedBox(width: isLandscape ? 6.0 : 6.w),
              AppText.c1(
                context.l10n.waitingForOpponentToJoin,
                fontSize: isLandscape ? 12.0 : 12.sp,
                fontWeight: FontWeight.w700,
                color: statusColor,
              ),
            ],
          ),

          SizedBox(height: isLandscape ? 8.0 : 8.h),

          // 2. Hàng 6 thẻ số phòng 3D chuẩn Web
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: digits
                .map((d) => _buildDigitBox(d, isPaper, isLandscape))
                .toList(),
          ),

          SizedBox(height: isLandscape ? 10.0 : 8.h),

          // 3. Hàng 3 nút chuẩn mẫu Web: [CHÉP MÃ] [CHÉP LINK] [HỦY]
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Nút 1: Chép mã
              if (isPaper)
                AppButton(
                  text: context.l10n.copyCodeCaps,
                  icon: Icon(
                    Icons.copy_rounded,
                    size: iconSize,
                    color: AppColors.paperTextDark,
                  ),
                  height: btnHeight,
                  fontSize: btnFontSize,
                  padding: btnPad,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  backgroundColor: AppColors.paperCardBg,
                  borderColor: AppColors.paperBorder,
                  extrusionColor: AppColors.paperExtrusion,
                  textColor: AppColors.paperTextDark,
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: code));
                    AppToast.showSuccess(
                      context,
                      context.l10n.copiedRoomCode(code),
                    );
                  },
                )
              else
                AppButton.secondary(
                  text: context.l10n.copyCodeCaps,
                  icon: Icon(
                    Icons.copy_rounded,
                    size: iconSize,
                    color: AppColors.grayDark,
                  ),
                  height: btnHeight,
                  fontSize: btnFontSize,
                  padding: btnPad,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: code));
                    AppToast.showSuccess(
                      context,
                      context.l10n.copiedRoomCode(code),
                    );
                  },
                ),
              SizedBox(width: btnSpacing),

              // Nút 2: Chép link
              if (isPaper)
                AppButton(
                  text: context.l10n.copyLinkCaps,
                  icon: Icon(
                    Icons.link_rounded,
                    size: iconSize,
                    color: AppColors.paperTextDark,
                  ),
                  height: btnHeight,
                  fontSize: btnFontSize,
                  padding: btnPad,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  backgroundColor: AppColors.paperCardBg,
                  borderColor: AppColors.paperBorder,
                  extrusionColor: AppColors.paperExtrusion,
                  textColor: AppColors.paperTextDark,
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: 'https://wordduel.app/join/$code',
                      ),
                    );
                    AppToast.showSuccess(
                      context,
                      context.l10n.copiedInviteLink,
                    );
                  },
                )
              else
                AppButton.secondary(
                  text: context.l10n.copyLinkCaps,
                  icon: Icon(
                    Icons.link_rounded,
                    size: iconSize,
                    color: AppColors.grayDark,
                  ),
                  height: btnHeight,
                  fontSize: btnFontSize,
                  padding: btnPad,
                  borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: 'https://wordduel.app/join/$code',
                      ),
                    );
                    AppToast.showSuccess(
                      context,
                      context.l10n.copiedInviteLink,
                    );
                  },
                ),
              SizedBox(width: btnSpacing),

              // Nút 3: Hủy (dùng hệ màu dialogClose chuẩn từ AppColors)
              AppButton(
                text: context.l10n.cancel.toUpperCase(),
                icon: Icon(
                  Icons.close_rounded,
                  size: iconSize,
                  color: AppColors.dialogCloseIcon,
                ),
                backgroundColor: AppColors.dialogCloseBg,
                borderColor: AppColors.dialogCloseBorder,
                extrusionColor: AppColors.dialogCloseExtrusion,
                textColor: AppColors.dialogCloseIcon,
                borderRadius: BorderRadius.circular(isLandscape ? 8.0 : 8.r),
                height: btnHeight,
                fontSize: btnFontSize,
                padding: btnPad,
                extrusionHeight: 1.5,
                onPressed: onCancelRoom,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDigitBox(String digit, bool isPaper, bool isLandscape) {
    final boxWidth = isLandscape ? 44.0 : 40.w;
    final boxHeight = isLandscape ? 48.0 : 46.h;
    final fontSize = isLandscape ? 22.0 : 20.sp;

    return Container(
      width: boxWidth,
      height: boxHeight,
      margin: EdgeInsets.symmetric(horizontal: isLandscape ? 3.0 : 2.5.w),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperCardBg : AppColors.white,
        borderRadius: BorderRadius.circular(isLandscape ? 10.0 : 9.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.sky,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper ? AppColors.paperExtrusion : AppColors.skyDark,
            offset: const Offset(0, 2.5),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: AppText.t2(
        digit,
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: isPaper ? AppColors.paperTextDark : AppColors.skyDark,
      ),
    );
  }
}
