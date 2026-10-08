import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_feedback_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_info_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/privacy_policy_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại Cài đặt trò chơi chuẩn phong cách 3D Game
class HomeSettingsDialog extends StatelessWidget {
  const HomeSettingsDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (context) => const HomeSettingsDialog(),
    );
  }

  void _showFeedbackDialog(BuildContext context) {
    HomeFeedbackDialog.show(context);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, appState) {
        return BlocBuilder<AuthBloc, AuthState>(
          builder: (context, authState) {
            final isClassic = appState.isClassicTheme;
            final isPaper = appState.isPaperTheme;
            final isSoundEnabled =
                appState.isMusicEnabled || appState.isSfxEnabled;

            final primaryBg = isClassic
                ? AppColors.classicButtonBlue
                : AppColors.paperGreen;
            final primaryExtrusion = isClassic
                ? AppColors.classicButtonBlueExtrusion
                : AppColors.paperGreenExtrusion;
            final soundBg = isClassic
                ? AppColors.classicButtonEmerald
                : AppColors.paperGreen;
            final soundExtrusion = isClassic
                ? AppColors.classicButtonEmeraldExtrusion
                : AppColors.paperGreenExtrusion;
            final isLandscape =
                MediaQuery.of(context).orientation == Orientation.landscape;

            final btnHeight = isLandscape ? 28.0 : 28.h;
            final btnFontSize = isLandscape ? 10.5 : 10.sp;
            final btnPadding = isLandscape
                ? const EdgeInsets.symmetric(horizontal: 10, vertical: 4)
                : EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h);

            return AppGameDialog(
              title: 'Cài đặt trò chơi',
              icon: Icons.settings_rounded,
              maxWidth: isLandscape ? 440.0 : 340.w,
              maxHeight: isLandscape ? 330.0 : 560.h,
              padding: isLandscape
                  ? const EdgeInsets.symmetric(horizontal: 14, vertical: 6)
                  : EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
              backgroundColor: isPaper
                  ? AppColors.paperCardBg
                  : AppColors.white,
              borderColor: isPaper
                  ? AppColors.paperBorder
                  : AppColors.blueLight,
              headerGradientColors: isPaper
                  ? const [AppColors.paperGreen, AppColors.paperGreenDark]
                  : const [AppColors.blueLight, AppColors.blueDark],
              boxShadow: isPaper
                  ? [
                      BoxShadow(
                        color: AppColors.black.withValues(alpha: 0.18),
                        blurRadius: isLandscape ? 16 : 18.w,
                        offset: Offset(0, isLandscape ? 6 : 8.h),
                      ),
                    ]
                  : null,
              footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
              footerBorderColor: isPaper ? AppColors.paperBorder : null,
              footerTextColor: isPaper ? AppColors.paperTextMedium : null,
              footerText: '⭐ Chúc bạn có trải nghiệm tuyệt vời cùng Bufopia! ⭐',
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ── 1. Tài khoản ────────────────────────────────────
                  SettingsItem(
                    showTopDivider: false,
                    title: 'Tài khoản',
                    subtitle: authState.currentUser != null
                        ? 'Đã đăng nhập: ${authState.currentUser!.displayName}'
                        : 'Đăng nhập để lưu tiến độ trên thiết bị',
                    action: AppButton(
                      text: authState.currentUser != null
                          ? 'HỒ SƠ'
                          : 'ĐĂNG NHẬP',
                      backgroundColor: primaryBg,
                      extrusionColor: primaryExtrusion,
                      fontSize: btnFontSize,
                      fontWeight: FontWeight.w700,
                      height: btnHeight,
                      borderRadius: BorderRadius.circular(8.r),
                      padding: btnPadding,
                      onPressed: () {
                        Navigator.of(context).pop();
                        PlayerInfoDialog.show(context);
                      },
                    ),
                  ),

                  // ── 2. Ngôn ngữ ─────────────────────────────────────
                  SettingsItem(
                    title: 'Ngôn ngữ',
                    subtitle: 'Ngôn ngữ hiển thị của trò chơi',
                    action: SettingsLanguageSwitcher(
                      currentLanguage: appState.languageCode,
                      isPaper: isPaper,
                      onChanged: (code) => context.read<AppBloc>().add(
                        AppEvent.languageChanged(code),
                      ),
                    ),
                  ),

                  // ── 3. Giao diện ─────────────────────────────────────
                  SettingsItem(
                    title: 'Giao diện',
                    subtitle: 'Đổi phong cách hiển thị',
                    action: SettingsThemeSwitcher(
                      currentTheme: appState.appTheme,
                      isPaper: isPaper,
                      onChanged: (theme) => context.read<AppBloc>().add(
                        AppEvent.themeChanged(theme),
                      ),
                    ),
                  ),

                  // ── 4. Âm thanh & hiệu ứng ──────────────────────────
                  SettingsItem(
                    title: 'Âm thanh & hiệu ứng',
                    subtitle: 'Âm thắng, thua và đồng hồ',
                    action: AppButton(
                      icon: Icon(
                        isSoundEnabled
                            ? Icons.volume_up_rounded
                            : Icons.volume_off_rounded,
                        color: AppColors.white,
                        size: 12.r,
                      ),
                      text: isSoundEnabled ? 'ĐANG BẬT' : 'ĐÃ TẮT',
                      backgroundColor: isSoundEnabled
                          ? soundBg
                          : AppColors.neutralDisabled,
                      extrusionColor: isSoundEnabled
                          ? soundExtrusion
                          : AppColors.neutralDisabledExtrusion,
                      fontSize: btnFontSize,
                      fontWeight: FontWeight.w700,
                      height: btnHeight,
                      borderRadius: BorderRadius.circular(8.r),
                      padding: btnPadding,
                      onPressed: () {
                        if (isSoundEnabled) {
                          if (appState.isMusicEnabled) {
                            context.read<AppBloc>().add(
                              const AppEvent.musicToggled(),
                            );
                          }
                          if (appState.isSfxEnabled) {
                            context.read<AppBloc>().add(
                              const AppEvent.sfxToggled(),
                            );
                          }
                        } else {
                          context.read<AppBloc>().add(
                            const AppEvent.musicToggled(),
                          );
                          context.read<AppBloc>().add(
                            const AppEvent.sfxToggled(),
                          );
                        }
                      },
                    ),
                  ),

                  // ── 5. Góp ý ─────────────────────────────────────────
                  SettingsItem(
                    title: 'Góp ý cho Bufopia',
                    subtitle: 'Chia sẻ ý tưởng, báo lỗi hoặc góp ý giao diện',
                    action: AppButton(
                      icon: Icon(
                        Icons.chat_bubble_rounded,
                        color: AppColors.white,
                        size: 12.r,
                      ),
                      text: 'GÓP Ý',
                      backgroundColor: primaryBg,
                      extrusionColor: primaryExtrusion,
                      fontSize: btnFontSize,
                      fontWeight: FontWeight.w700,
                      height: btnHeight,
                      borderRadius: BorderRadius.circular(8.r),
                      padding: btnPadding,
                      onPressed: () => _showFeedbackDialog(context),
                    ),
                  ),

                  // ── 6. Chính sách ────────────────────────────────────
                  SettingsItem(
                    title: 'Chính sách & Quyền riêng tư',
                    subtitle: 'Bảo vệ dữ liệu, điều khoản và quy tắc',
                    action: AppButton(
                      icon: Icon(
                        Icons.verified_user_rounded,
                        color: AppColors.white,
                        size: 12.r,
                      ),
                      text: 'CHÍNH SÁCH',
                      backgroundColor: primaryBg,
                      extrusionColor: primaryExtrusion,
                      fontSize: btnFontSize,
                      fontWeight: FontWeight.w700,
                      height: btnHeight,
                      borderRadius: BorderRadius.circular(8.r),
                      padding: btnPadding,
                      onPressed: () => PrivacyPolicyDialog.show(context),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
