import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
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

    if (createdRoomCode == null) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: AppButton(
          text: 'TẠO PHÒNG NGAY',
          icon: Icon(
            Icons.sensors_rounded,
            size: 12.r,
            color: AppColors.white,
          ),
          width: double.infinity,
          height: 30.h,
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          spacing: 6,
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
          borderRadius: BorderRadius.circular(10.r),
          fontSize: 12.sp,
          fontWeight: FontWeight.w700,
          onPressed: onCreateRoom,
        ),
      );
    }

    final code = createdRoomCode!;
    final digits = code.split('');
    final statusColor = isPaper
        ? AppColors.paperGreenDark
        : AppColors.modeBotButtonDark;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperSurface : AppColors.topicEasyBg,
        borderRadius: BorderRadius.circular(12.r),
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
                width: 6.r,
                height: 6.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: statusColor,
                ),
              ),
              SizedBox(width: 4.w),
              AppText.c1(
                'CHỜ ĐỐI THỦ VÀO...',
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: statusColor,
              ),
            ],
          ),

          SizedBox(height: 6.h),

          // 2. Hàng 6 thẻ số phòng 3D chuẩn Web
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: digits.map((d) => _buildDigitBox(d, isPaper)).toList(),
          ),

          SizedBox(height: 6.h),

          // 3. Hàng 3 nút chuẩn mẫu Web: [CHÉP MÃ] [CHÉP LINK] [HỦY]
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Nút 1: Chép mã
              if (isPaper)
                AppButton(
                  text: 'CHÉP MÃ',
                  icon: Icon(
                    Icons.copy_rounded,
                    size: 10.r,
                    color: AppColors.paperTextDark,
                  ),
                  height: 15.h,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w700,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  backgroundColor: AppColors.paperCardBg,
                  borderColor: AppColors.paperBorder,
                  extrusionColor: AppColors.paperExtrusion,
                  textColor: AppColors.paperTextDark,
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: code));
                    AppSnackBar.showSuccess(
                      context,
                      'Đã sao chép mã phòng $code',
                    );
                  },
                )
              else
                AppButton.secondary(
                  text: 'CHÉP MÃ',
                  icon: Icon(
                    Icons.copy_rounded,
                    size: 10.r,
                    color: AppColors.grayDark,
                  ),
                  height: 15.h,
                  fontSize: 8.sp,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: code));
                    AppSnackBar.showSuccess(
                      context,
                      'Đã sao chép mã phòng $code',
                    );
                  },
                ),
              SizedBox(width: 6.w),

              // Nút 2: Chép link
              if (isPaper)
                AppButton(
                  text: 'CHÉP LINK',
                  icon: Icon(
                    Icons.link_rounded,
                    size: 10.r,
                    color: AppColors.paperTextDark,
                  ),
                  height: 15.h,
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w700,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
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
                    AppSnackBar.showSuccess(
                      context,
                      'Đã sao chép liên kết vào phòng!',
                    );
                  },
                )
              else
                AppButton.secondary(
                  text: 'CHÉP LINK',
                  icon: Icon(
                    Icons.link_rounded,
                    size: 10.r,
                    color: AppColors.grayDark,
                  ),
                  height: 15.h,
                  fontSize: 8.sp,
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  extrusionHeight: 1.5,
                  onPressed: () {
                    Clipboard.setData(
                      ClipboardData(
                        text: 'https://wordduel.app/join/$code',
                      ),
                    );
                    AppSnackBar.showSuccess(
                      context,
                      'Đã sao chép liên kết vào phòng!',
                    );
                  },
                ),
              SizedBox(width: 6.w),

              // Nút 3: Hủy (dùng hệ màu dialogClose chuẩn từ AppColors)
              AppButton(
                text: 'HỦY',
                icon: Icon(
                  Icons.close_rounded,
                  size: 10.r,
                  color: AppColors.dialogCloseIcon,
                ),
                backgroundColor: AppColors.dialogCloseBg,
                borderColor: AppColors.dialogCloseBorder,
                extrusionColor: AppColors.dialogCloseExtrusion,
                textColor: AppColors.dialogCloseIcon,
                borderRadius: BorderRadius.circular(10.r),
                height: 15.h,
                fontSize: 8.sp,
                fontWeight: FontWeight.w700,
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                extrusionHeight: 1.5,
                onPressed: onCancelRoom,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDigitBox(String digit, bool isPaper) {
    return Container(
      width: 30.w,
      height: 15.h,
      margin: EdgeInsets.symmetric(horizontal: 1.5.w),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperCardBg : AppColors.white,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.sky,
          width: 1.4,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper ? AppColors.paperExtrusion : AppColors.skyDark,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: AppText.t2(
        digit,
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: isPaper ? AppColors.paperTextDark : AppColors.skyDark,
      ),
    );
  }
}
