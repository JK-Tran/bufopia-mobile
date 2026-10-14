import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Item lựa chọn chế độ nối từ (Dạng Hàng Ngang 3D)
/// Tối ưu giao diện cho màn hình dọc điện thoại, không bị cắt chữ.
/// Tương thích cả Paper Theme và Classic Theme, tuân thủ UI/UX Guidelines.
class WordChainModeItem extends StatelessWidget {
  const WordChainModeItem({
    required this.badgeText,
    required this.imagePath,
    required this.title,
    super.key,
    this.description,
    this.onTimedPressed,
    this.onRelaxPressed,
    this.isPaperTheme,
  });

  final String badgeText;
  final String imagePath;
  final String title;
  final String? description;
  final VoidCallback? onTimedPressed;
  final VoidCallback? onRelaxPressed;
  final bool? isPaperTheme;

  @override
  Widget build(BuildContext context) {
    final isPaper =
        isPaperTheme ??
        context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    // Bảng màu thích ứng theo Theme từ AppColors
    final cardBg = isPaper ? AppColors.paperSurface : AppColors.lightBackground;
    final cardBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.classicBorder;
    final cardExtrusion = isPaper
        ? AppColors.paperExtrusion
        : AppColors.grayExtrusion;
    final badgeBg = isPaper ? AppColors.paperBadgeBg : AppColors.pillBg;
    final badgeBorder = isPaper
        ? AppColors.paperBadgeBorder
        : AppColors.pillBorder;
    final badgeTextCol = isPaper
        ? AppColors.paperBadgeText
        : AppColors.grayDark;
    final titleCol = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final descCol = isPaper ? AppColors.paperTextMuted : AppColors.grayMedium;

    // Màu nút Luyện Tính Giờ & Thư Giãn (Xanh lá 3D)
    final btnBg = isPaper
        ? AppColors.paperGreen
        : AppColors.classicButtonEmerald;
    final btnExtrusion = isPaper
        ? AppColors.paperGreenExtrusion
        : AppColors.classicButtonEmeraldExtrusion;
    final btnBorder = isPaper
        ? AppColors.paperGreenBorder
        : AppColors.modeBotButtonDark;

    return Container(
      padding: EdgeInsets.fromLTRB(10.w, 10.h, 10.w, 10.h),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: cardBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: cardExtrusion,
            offset: Offset(0, 2.5.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.05),
            blurRadius: 6.r,
            offset: Offset(0, 3.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Hàng 1: Linh vật + [Tiêu đề & Badge] + Mô tả đầy đủ bên dưới ──
          Row(
            children: [
              // Khung ảnh linh vật 3D
              Container(
                width: 44.r,
                height: 44.r,
                decoration: BoxDecoration(
                  color: isPaper ? AppColors.paperCardBg : AppColors.white,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: cardBorder.withValues(alpha: 0.7),
                    width: 1.w,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(11.r),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) => Icon(
                      Icons.sports_esports_rounded,
                      size: 28.r,
                      color: btnBg,
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10.w),

              // Cột nội dung: Tiêu đề + Badge ở hàng trên & Mô tả ở hàng dưới
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Hàng trên: Tiêu đề chế độ + Badge viên thuốc
                    Row(
                      children: [
                        Expanded(
                          child: AppText.t3(
                            title,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                            color: titleCol,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 6.w),
                        // Badge viên thuốc (1 NGƯỜI / TÌM BẠN / 2 NGƯỜI)
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 3.h,
                          ),
                          decoration: BoxDecoration(
                            color: badgeBg,
                            borderRadius: BorderRadius.circular(12.r),
                            border: Border.all(
                              color: badgeBorder,
                              width: 1.w,
                            ),
                          ),
                          child: AppText.c1(
                            badgeText,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w700,
                            color: badgeTextCol,
                          ),
                        ),
                      ],
                    ),

                    if (description != null) ...[
                      SizedBox(height: 3.h),
                      // Dòng giải thích đầy đủ trải rộng, không bị cắt chữ
                      AppText.c1(
                        description!,
                        fontSize: 12.sp,
                        color: descCol,
                        maxLines: 2,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          // ── Hàng 2: 2 Nút 3D dàn đều 50/50 ──
          Row(
            children: [
              Expanded(
                child: _ModeButton(
                  label: 'LUYỆN TÍNH GIỜ',
                  icon: Icons.play_arrow_rounded,
                  bgColor: btnBg,
                  extrusionColor: btnExtrusion,
                  borderColor: btnBorder,
                  onPressed: () {
                    context.read<AppBloc>().add(
                      const AppEvent.clickSoundPlayed(),
                    );
                    onTimedPressed?.call();
                  },
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: _ModeButton(
                  label: 'LUYỆN THƯ GIÃN',
                  icon: Icons.auto_awesome_rounded,
                  bgColor: btnBg,
                  extrusionColor: btnExtrusion,
                  borderColor: btnBorder,
                  onPressed: () {
                    context.read<AppBloc>().add(
                      const AppEvent.clickSoundPlayed(),
                    );
                    onRelaxPressed?.call();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/// Nút chế độ luyện tập 3D – dùng nội bộ trong [WordChainModeItem].
class _ModeButton extends StatelessWidget {
  const _ModeButton({
    required this.label,
    required this.icon,
    required this.bgColor,
    required this.extrusionColor,
    required this.borderColor,
    this.onPressed,
  });

  final String label;
  final IconData icon;
  final Color bgColor;
  final Color extrusionColor;
  final Color borderColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: label,
      icon: Icon(icon, color: AppColors.white, size: 16.r),
      backgroundColor: bgColor,
      extrusionColor: extrusionColor,
      borderColor: borderColor,
      fontSize: 12.sp,
      fontWeight: FontWeight.w700,
      height: 36.h,
      extrusionHeight: 2.5,
      borderRadius: BorderRadius.circular(10.r),
      onPressed: onPressed,
    );
  }
}
