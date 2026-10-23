import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/auth/presentation/widgets/dialog/account_conflict_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_feedback_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_info_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/privacy_policy_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/settings/settings.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state.conflict != null) {
          final choice = await AccountConflictDialog.show(
            context,
            conflict: state.conflict!,
          );
          if (!context.mounted) return;
          if (choice == ConflictResolutionChoice.merge) {
            context.read<AuthBloc>().add(
              const AuthEvent.resolveAccountConflict(action: 'merge'),
            );
          } else if (choice == ConflictResolutionChoice.overwrite) {
            context.read<AuthBloc>().add(
              const AuthEvent.resolveAccountConflict(action: 'overwrite'),
            );
          } else {
            context.read<AuthBloc>().add(
              const AuthEvent.cancelAccountConflict(),
            );
          }
        }
      },
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, appState) {
          return BlocBuilder<AuthBloc, AuthState>(
            builder: (context, authState) {
              final isClassic = appState.isClassicTheme;
              final isPaper = appState.isPaperTheme;

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

              final l10n = context.l10n;
              return AppGameDialog(
                title: l10n.settingsTitle,
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
                footerText:
                    '⭐ Chúc bạn có trải nghiệm tuyệt vời cùng Bufopia! ⭐',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ── 1. Tài khoản ────────────────────────────────────
                    Builder(
                      builder: (context) {
                        final fbUser = FirebaseAuth.instance.currentUser;
                        final isGoogleLinked =
                            fbUser != null && !fbUser.isAnonymous;
                        final userName =
                            authState.currentUser?.displayName.isNotEmpty ==
                                true
                            ? authState.currentUser!.displayName
                            : 'Khách';

                        if (isGoogleLinked) {
                          return SettingsItem(
                            showTopDivider: false,
                            title: l10n.account,
                            subtitle: 'Google: ${fbUser.email ?? userName}',
                            action: AppButton(
                              text: l10n.profileBtn,
                              backgroundColor: primaryBg,
                              extrusionColor: primaryExtrusion,
                              fontSize: btnFontSize,
                              height: btnHeight,
                              borderRadius: BorderRadius.circular(8.r),
                              padding: btnPadding,
                              onPressed: () {
                                Navigator.of(context).pop();
                                PlayerInfoDialog.show(context);
                              },
                            ),
                          );
                        }

                        return SettingsItem(
                          showTopDivider: false,
                          title: l10n.account,
                          subtitle: l10n.guestNotLinked(userName),
                          action: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              AppIconButton(
                                icon: Icons.person_rounded,
                                tooltip: 'Xem hồ sơ',
                                size: btnHeight,
                                iconSize: 14.r,
                                backgroundColor: isPaper
                                    ? AppColors.paperCardBg
                                    : AppColors.white,
                                iconColor: isPaper
                                    ? AppColors.paperTextDark
                                    : AppColors.grayDark,
                                borderColor: isPaper
                                    ? AppColors.paperBorder
                                    : AppColors.grayLight,
                                extrusionColor: isPaper
                                    ? AppColors.paperExtrusion
                                    : AppColors.grayExtrusion,
                                extrusionHeight: 2,
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  PlayerInfoDialog.show(context);
                                },
                              ),
                              SizedBox(width: 6.w),
                              AppButton(
                                icon: authState.isLoading
                                    ? SizedBox(
                                        width: 12.w,
                                        height: 12.w,
                                        child: const CircularProgressIndicator(
                                          strokeWidth: 2,
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                AppColors.white,
                                              ),
                                        ),
                                      )
                                    : Icon(
                                        Icons.cloud_sync_rounded,
                                        size: 14.w,
                                        color: AppColors.white,
                                      ),
                                text: l10n.logIn,
                                backgroundColor: primaryBg,
                                extrusionColor: primaryExtrusion,
                                fontSize: btnFontSize,
                                height: btnHeight,
                                borderRadius: BorderRadius.circular(8.r),
                                padding: btnPadding,
                                onPressed: authState.isLoading
                                    ? null
                                    : () {
                                        context.read<AuthBloc>().add(
                                          const AuthEvent.signInWithGoogle(),
                                        );
                                      },
                              ),
                            ],
                          ),
                        );
                      },
                    ),

                    // ── 2. Ngôn ngữ ─────────────────────────────────────
                    SettingsItem(
                      title: l10n.language,
                      subtitle: l10n.languageSubtitle,
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
                      title: l10n.theme,
                      subtitle: l10n.themeSubtitle,
                      action: SettingsThemeSwitcher(
                        currentTheme: appState.appTheme,
                        isPaper: isPaper,
                        onChanged: (theme) => context.read<AppBloc>().add(
                          AppEvent.themeChanged(theme),
                        ),
                      ),
                    ),

                    // ── 4. Nhạc nền (BGM) ───────────────────────────────
                    SettingsItem(
                      title: l10n.music,
                      subtitle: l10n.musicSubtitle,
                      action: AppButton(
                        icon: Icon(
                          appState.isMusicEnabled
                              ? Icons.music_note_rounded
                              : Icons.music_off_rounded,
                          color: AppColors.white,
                          size: 12.r,
                        ),
                        text: appState.isMusicEnabled
                            ? l10n.onState
                            : l10n.offState,
                        backgroundColor: appState.isMusicEnabled
                            ? soundBg
                            : AppColors.neutralDisabled,
                        extrusionColor: appState.isMusicEnabled
                            ? soundExtrusion
                            : AppColors.neutralDisabledExtrusion,
                        fontSize: btnFontSize,
                        height: btnHeight,
                        borderRadius: BorderRadius.circular(8.r),
                        padding: btnPadding,
                        onPressed: () {
                          context.read<AppBloc>().add(
                            const AppEvent.musicToggled(),
                          );
                          SoundManager.playClick();
                        },
                      ),
                    ),

                    // ── 5. Hiệu ứng âm thanh (SFX) ──────────────────────
                    SettingsItem(
                      title: l10n.soundEffects,
                      subtitle: l10n.soundEffectsSubtitle,
                      action: AppButton(
                        icon: Icon(
                          appState.isSfxEnabled
                              ? Icons.volume_up_rounded
                              : Icons.volume_off_rounded,
                          color: AppColors.white,
                          size: 12.r,
                        ),
                        text: appState.isSfxEnabled
                            ? l10n.onState
                            : l10n.offState,
                        backgroundColor: appState.isSfxEnabled
                            ? soundBg
                            : AppColors.neutralDisabled,
                        extrusionColor: appState.isSfxEnabled
                            ? soundExtrusion
                            : AppColors.neutralDisabledExtrusion,
                        fontSize: btnFontSize,
                        height: btnHeight,
                        borderRadius: BorderRadius.circular(8.r),
                        padding: btnPadding,
                        onPressed: () {
                          context.read<AppBloc>().add(
                            const AppEvent.sfxToggled(),
                          );
                          SoundManager.playClick();
                        },
                      ),
                    ),

                    // ── 6. Góp ý ─────────────────────────────────────────
                    SettingsItem(
                      title: l10n.feedback,
                      subtitle: l10n.feedbackSubtitle,
                      action: AppButton(
                        icon: Icon(
                          Icons.chat_bubble_rounded,
                          color: AppColors.white,
                          size: 12.r,
                        ),
                        text: l10n.badgeFeedback,
                        backgroundColor: primaryBg,
                        extrusionColor: primaryExtrusion,
                        fontSize: btnFontSize,
                        height: btnHeight,
                        borderRadius: BorderRadius.circular(8.r),
                        padding: btnPadding,
                        onPressed: () => _showFeedbackDialog(context),
                      ),
                    ),

                    // ── 7. Chính sách ────────────────────────────────────
                    SettingsItem(
                      title: l10n.privacyPolicy,
                      subtitle: l10n.privacyPolicySubtitle,
                      action: AppButton(
                        icon: Icon(
                          Icons.verified_user_rounded,
                          color: AppColors.white,
                          size: 12.r,
                        ),
                        text: l10n.privacyPolicy,
                        backgroundColor: primaryBg,
                        extrusionColor: primaryExtrusion,
                        fontSize: btnFontSize,
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
      ),
    );
  }
}
