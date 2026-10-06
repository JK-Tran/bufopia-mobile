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

/// Hộp thoại Cài đặt trò chơi
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

            final dialogBg = isClassic
                ? AppColors.white
                : AppColors.paperSurfaceWarm;
            final dialogBorder = isClassic
                ? AppColors.classicBorder
                : AppColors.paperBorderDark;

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

            return Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              insetPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 6.h,
              ),
              child: Center(
                child: Container(
                  width: 320.w,
                  constraints: BoxConstraints(maxHeight: 0.94.sh),
                  decoration: BoxDecoration(
                    color: dialogBg,
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(color: dialogBorder, width: 1.5.w),
                    boxShadow: [
                      BoxShadow(
                        color: isClassic
                            ? AppColors.classicShadowIndigo.withValues(
                                alpha: 0.16,
                              )
                            : AppColors.black.withValues(alpha: 0.22),
                        blurRadius: 18.r,
                        offset: Offset(0, 6.h),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(14.r),
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.fromLTRB(14.w, 10.h, 14.w, 10.h),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // ── Header ──────────────────────────────────────
                          SettingsHeader(
                            isClassic: isClassic,
                            onClose: () => Navigator.of(context).pop(),
                          ),

                          // ── Tài khoản ────────────────────────────────────
                          SettingsItem(
                            title: 'Tài khoản',
                            subtitle: authState.currentUser != null
                                ? 'Đã đăng nhập: '
                                      '${authState.currentUser!.displayName}'
                                : 'Đăng nhập để lưu tiến độ trên thiết bị',
                            action: AppButton(
                              text: authState.currentUser != null
                                  ? 'HỒ SƠ'
                                  : 'ĐĂNG NHẬP',
                              backgroundColor: primaryBg,
                              extrusionColor: primaryExtrusion,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              borderRadius: BorderRadius.circular(8.r),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 4.h,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                                PlayerInfoDialog.show(context);
                              },
                            ),
                          ),

                          // ── Ngôn ngữ ─────────────────────────────────────
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

                          // ── Giao diện ─────────────────────────────────────
                          SettingsItem(
                            leadingIcon: Icon(
                              Icons.palette_rounded,
                              color: AppColors.classicBadgePurpleText,
                              size: 16.r,
                            ),
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

                          // ── Âm thanh & hiệu ứng ──────────────────────────
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
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              borderRadius: BorderRadius.circular(8.r),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 4.h,
                              ),
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

                          // ── Góp ý ─────────────────────────────────────────
                          SettingsItem(
                            title: 'Góp ý cho Bufopia',
                            subtitle:
                                'Chia sẻ ý tưởng, báo lỗi hoặc góp ý giao diện',
                            action: AppButton(
                              icon: Icon(
                                Icons.chat_bubble_rounded,
                                color: AppColors.white,
                                size: 12.r,
                              ),
                              text: 'GÓP Ý',
                              backgroundColor: primaryBg,
                              extrusionColor: primaryExtrusion,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              borderRadius: BorderRadius.circular(8.r),
                              padding: EdgeInsets.symmetric(
                                horizontal: 10.w,
                                vertical: 4.h,
                              ),
                              onPressed: () => _showFeedbackDialog(context),
                            ),
                          ),

                          // ── Chính sách ────────────────────────────────────
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
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w700,
                              borderRadius: BorderRadius.circular(8.r),
                              padding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 4.h,
                              ),
                              onPressed: () =>
                                  PrivacyPolicyDialog.show(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
