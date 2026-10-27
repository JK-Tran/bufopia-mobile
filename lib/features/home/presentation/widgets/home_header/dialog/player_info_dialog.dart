import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/auth/presentation/widgets/dialog/account_conflict_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_avatar_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_edit_name_dialog.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerInfoDialog extends StatefulWidget {
  const PlayerInfoDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (context) => const PlayerInfoDialog(),
    );
  }

  @override
  State<PlayerInfoDialog> createState() => _PlayerInfoDialogState();
}

class _PlayerInfoDialogState extends State<PlayerInfoDialog> {
  static const List<String> _presets = [
    'assets/images/bunny-avatar.webp',
    'assets/images/pip-avatar.webp',
  ];

  String _displayName = '';
  String? _selectedAvatarUrl;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    final user = context.read<AuthBloc>().state.currentUser;
    _displayName = (user?.displayName.isNotEmpty == true)
        ? user!.displayName
        : 'Bunny';
    _selectedAvatarUrl = user?.avatarUrl;
  }

  void _onSave(User user, String newName) {
    if (newName.isEmpty) return;
    setState(() {
      _isSaving = true;
      _displayName = newName;
    });
    context.read<AuthBloc>().add(
      AuthEvent.updateProfile(
        displayName: newName,
        avatarUrl: _selectedAvatarUrl,
      ),
    );
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() => _isSaving = false);
        AppToast.showSuccess(context, context.l10n.profileUpdated);
      }
    });
  }

  Future<void> _openAvatarPicker() async {
    final selected = await PlayerAvatarDialog.show(
      context,
      currentAvatarUrl: _selectedAvatarUrl,
    );
    if (selected != null && mounted) {
      setState(() => _selectedAvatarUrl = selected);
      context.read<AuthBloc>().add(
        AuthEvent.updateProfile(
          displayName: _displayName,
          avatarUrl: selected,
        ),
      );
      AppToast.showSuccess(context, context.l10n.avatarUpdated);
    }
  }

  void _onSelectPreset(String assetPath) {
    if (_selectedAvatarUrl == assetPath) return;
    setState(() => _selectedAvatarUrl = assetPath);
    context.read<AuthBloc>().add(
      AuthEvent.updateProfile(
        displayName: _displayName,
        avatarUrl: assetPath,
      ),
    );
    AppToast.showSuccess(context, context.l10n.avatarUpdated);
  }

  void _copyId(String uid) {
    Clipboard.setData(ClipboardData(text: uid));
    AppToast.showSuccess(context, context.l10n.copiedPlayerId);
  }

  /// Mở dialog đổi tên hiển thị
  Future<void> _openEditNameSheet(User user) async {
    final result = await PlayerEditNameDialog.show(
      context,
      initialName: _displayName,
    );
    if (result != null && result.isNotEmpty && mounted) {
      _onSave(user, result);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) async {
        if (state.conflict != null) {
          final choice = await AccountConflictDialog.show(
            context,
            conflict: state.conflict!,
          );
          if (!context.mounted) return;
          if (choice == ConflictResolutionChoice.overwrite ||
              choice == ConflictResolutionChoice.merge) {
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
      builder: (context, state) {
        final user = state.currentUser ?? const User();
        final currentLevelXp = user.currentLevelXp;
        final neededForNext = user.neededForNext;
        final level = user.level;
        final progressPercent = neededForNext == 0
            ? 0.0
            : ((currentLevelXp / neededForNext) * 100);
        final progressFraction = (progressPercent / 100).clamp(0.0, 1.0);
        final uid = user.uid.isNotEmpty ? user.uid : 'V417IR';

        return AppGameDialog(
          title: context.l10n.playerProfile,
          icon: Icons.account_circle_rounded,
          maxWidth: 340.w,
          maxHeight: 560.h,
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
          borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
          headerGradientColors: isPaper
              ? const [AppColors.paperGreen, AppColors.paperGreenDark]
              : const [AppColors.blueLight, AppColors.blueDark],
          boxShadow: isPaper
              ? [
                  BoxShadow(
                    color: AppColors.black.withValues(alpha: 0.18),
                    blurRadius: 18.w,
                    offset: Offset(0, 8.h),
                  ),
                ]
              : null,
          footerBackgroundColor: isPaper
              ? AppColors.paperSurface
              : AppColors.skySurface,
          footerBorderColor: isPaper
              ? AppColors.paperBorder
              : AppColors.skyBorder,
          footerTextColor: isPaper
              ? AppColors.paperTextMedium
              : AppColors.skyDark,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ── 1. Thẻ thông tin cá nhân & Đổi tên / ID ───
              _buildProfileCard(user, uid, isPaper),

              SizedBox(height: 8.h),

              // ── 2. Chuỗi học & Chuỗi thắng ─────────────────
              Row(
                children: [
                  Expanded(
                    child: AppStreakBadge.study(streak: user.streak),
                  ),
                  SizedBox(width: 8.w),
                  Expanded(
                    child: AppStreakBadge.win(winStreak: user.winStreak),
                  ),
                ],
              ),

              SizedBox(height: 8.h),

              // ── 3. Tiến trình cấp độ & EXP ─────────────────
              _PlayerLevelProgressBar(
                level: level,
                currentLevelXp: currentLevelXp,
                neededForNext: neededForNext,
                progressPercent: progressPercent,
                progressFraction: progressFraction,
                totalXp: user.xp,
                backgroundColor: isPaper
                    ? AppColors.paperSurface
                    : AppColors.lightBackground,
                borderColor: isPaper
                    ? AppColors.paperBorder
                    : AppColors.grayLight,
                titleColor: isPaper
                    ? AppColors.paperTextDark
                    : AppColors.grayDark,
                progressColor: isPaper
                    ? AppColors.paperExpGreen
                    : AppColors.gold,
              ),

              SizedBox(height: 8.h),

              // ── 4. Thẻ động lực / Danh hiệu ────────────────
              _buildMotivationCard(isPaper),

              SizedBox(height: 8.h),

              // ── 5. Liên kết / Đăng nhập Google ─────────────
              _buildGoogleAuthButton(state, isPaper),
            ],
          ),
        );
      },
    );
  }

  Widget _buildGoogleAuthButton(AuthState state, bool isPaper) {
    if (state.isLoading) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 4.h),
        child: Center(
          child: SizedBox(
            width: 22.w,
            height: 22.w,
            child: const CircularProgressIndicator(strokeWidth: 2.5),
          ),
        ),
      );
    }

    final fbUser = fb.FirebaseAuth.instance.currentUser;
    final isGoogleLinked = fbUser != null && !fbUser.isAnonymous;
    final googleEmail = fbUser?.email ?? fbUser?.displayName ?? '';

    if (isGoogleLinked) {
      return Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
              decoration: BoxDecoration(
                color: isPaper
                    ? AppColors.paperSurface
                    : AppColors.lightBackground,
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: isPaper ? AppColors.paperBorder : AppColors.grayLight,
                  width: 1.w,
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.check_circle_rounded,
                    color: isPaper ? AppColors.paperGreen : AppColors.green,
                    size: 15.w,
                  ),
                  SizedBox(width: 4.w),
                  Expanded(
                    child: AppText.c1(
                      'Google: $googleEmail',
                      overflow: TextOverflow.ellipsis,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                      fontSize: 10.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 6.w),
          AppButton.secondary(
            text: context.l10n.logOut,
            fontSize: 12.sp,
            height: 28.h,
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            onPressed: () {
              context.read<AuthBloc>().add(const AuthEvent.loggedOut());
              AppToast.showSuccess(context, context.l10n.logoutSuccess);
            },
          ),
        ],
      );
    }

    return AppButton(
      icon: Icon(
        Icons.cloud_sync_rounded,
        size: 16.w,
        color: AppColors.white,
      ),
      text: context.l10n.saveProgressGoogle,
      backgroundColor: isPaper ? AppColors.paperGreen : AppColors.blue,
      extrusionColor: isPaper
          ? AppColors.paperGreenExtrusion
          : AppColors.blueDeep,
      fontSize: 12.sp,

      height: 32.h,
      onPressed: () {
        context.read<AuthBloc>().add(const AuthEvent.signInWithGoogle());
      },
    );
  }

  Widget _buildProfileCard(User user, String uid, bool isPaper) {
    final primaryAccent = isPaper ? AppColors.paperGreen : AppColors.blue;
    final cardBg = isPaper ? AppColors.paperSurface : AppColors.lightBackground;
    final cardBorder = isPaper ? AppColors.paperBorder : AppColors.grayLight;
    final textDark = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final textMuted = isPaper
        ? AppColors.paperTextMedium
        : AppColors.grayMedium;
    final inputBorder = isPaper
        ? AppColors.paperBorder
        : AppColors.blueLight.withValues(alpha: 0.6);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(color: cardBorder, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Avatar người chơi có badge chỉnh sửa
              AppAvatar(
                avatarUrl: _selectedAvatarUrl ?? user.avatarUrl,
                size: 52.r,
                borderWidth: 2,
                showBadge: true,
                badgeColor: primaryAccent,
                badgeIconColor: AppColors.white,
                badgeSize: 18.r,
                onTap: _openAvatarPicker,
              ),
              SizedBox(width: 10.w),
              // Thông tin Tên hiển thị + ID người chơi
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.c1(
                      context.l10n.displayNameLabel,
                      color: textMuted,
                      fontWeight: FontWeight.w700,
                      fontSize: 10.sp,
                    ),
                    SizedBox(height: 4.h),
                    GestureDetector(
                      onTap: () => _openEditNameSheet(user),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(8.w),
                          border: Border.all(
                            color: inputBorder,
                            width: 1.w,
                          ),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: AppText.t3(
                                _displayName,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                color: textDark,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            if (_isSaving)
                              SizedBox(
                                width: 14.w,
                                height: 14.w,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(
                                    primaryAccent,
                                  ),
                                ),
                              )
                            else
                              Icon(
                                Icons.edit_rounded,
                                size: 14.w,
                                color: textMuted,
                              ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 4.h),
                    // Badge ID sao chép
                    _buildIdBadge(uid, isPaper),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          // ── Quick Avatars ────────────────────────
          Row(
            children: [
              AppText.c1(
                context.l10n.presetAvatars,
                color: textMuted,
                fontWeight: FontWeight.w700,
                fontSize: 10.sp,
              ),
              SizedBox(width: 6.w),
              ..._presets.map((p) => _buildPresetThumbnail(p, isPaper)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIdBadge(String uid, bool isPaper) {
    final textMuted = isPaper
        ? AppColors.paperTextMedium
        : AppColors.grayMedium;
    final badgeBg = isPaper
        ? AppColors.paperBorder.withValues(alpha: 0.3)
        : AppColors.grayLight.withValues(alpha: 0.5);

    return GestureDetector(
      onTap: () => _copyId(uid),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: badgeBg,
          borderRadius: BorderRadius.circular(6.w),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: AppText.c1(
                'ID: $uid',
                color: textMuted,
                fontSize: 10.sp,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            SizedBox(width: 4.w),
            Icon(Icons.copy_rounded, color: textMuted, size: 10.w),
          ],
        ),
      ),
    );
  }

  Widget _buildPresetThumbnail(String assetPath, bool isPaper) {
    final isSelected = (_selectedAvatarUrl ?? '') == assetPath;
    final primaryAccent = isPaper ? AppColors.paperGreen : AppColors.blue;
    final borderColor = isSelected
        ? primaryAccent
        : (isPaper ? AppColors.paperBorder : AppColors.grayLight);

    return GestureDetector(
      onTap: () => _onSelectPreset(assetPath),
      child: Container(
        margin: EdgeInsets.only(right: 6.w),
        width: 26.r,
        height: 26.r,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: isSelected ? 2.w : 1.w,
          ),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: primaryAccent.withValues(alpha: 0.35),
                blurRadius: 4.w,
                offset: Offset(0, 2.h),
              ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: ClipOval(
                child: Image.asset(
                  assetPath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (isSelected)
              Positioned(
                right: -2.w,
                bottom: -2.h,
                child: Container(
                  padding: EdgeInsets.all(1.w),
                  decoration: BoxDecoration(
                    color: primaryAccent,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.check_rounded,
                    color: AppColors.white,
                    size: 8.w,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildMotivationCard(bool isPaper) {
    final gradientColors = isPaper
        ? const [
            AppColors.paperCardGradientStart,
            AppColors.paperCardGradientEnd,
          ]
        : const [AppColors.skySurface, AppColors.white];
    final borderColor = isPaper
        ? AppColors.paperBorder
        : AppColors.blueLight.withValues(alpha: 0.5);
    final iconColor = isPaper ? AppColors.paperStreakFlame : AppColors.orange;
    final titleColor = isPaper ? AppColors.paperTextDark : AppColors.grayDark;
    final subtitleColor = isPaper
        ? AppColors.paperTextMedium
        : AppColors.grayMedium;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: gradientColors,
        ),
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(
          color: borderColor,
          width: 1.w,
        ),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(6.w),
            decoration: BoxDecoration(
              color: iconColor.withValues(alpha: 0.12),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.military_tech_rounded,
              color: iconColor,
              size: 24.w,
            ),
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.t3(
                  context.l10n.vocabWarrior,
                  color: titleColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
                SizedBox(height: 2.h),
                AppText.c1(
                  context.l10n.vocabWarriorSubtitle,
                  color: subtitleColor,
                  fontSize: 12.sp,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Thẻ hiển thị Cấp độ & Thanh tiến trình EXP nội bộ của PlayerInfoDialog
class _PlayerLevelProgressBar extends StatelessWidget {
  const _PlayerLevelProgressBar({
    required this.level,
    required this.currentLevelXp,
    required this.neededForNext,
    required this.progressPercent,
    required this.progressFraction,
    required this.totalXp,
    this.backgroundColor,
    this.borderColor,
    this.titleColor,
    this.progressColor,
  });

  final int level;
  final int currentLevelXp;
  final int neededForNext;
  final double progressPercent;
  final double progressFraction;
  final int totalXp;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? titleColor;
  final Color? progressColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.lightBackground,
        borderRadius: BorderRadius.circular(12.w),
        border: Border.all(
          color: borderColor ?? AppColors.grayLight,
          width: 1.w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          AppText.c1(
            context.l10n.levelProgress,
            fontSize: 12.sp,
            fontWeight: FontWeight.w700,
            color: titleColor ?? AppColors.grayDark,
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                decoration: BoxDecoration(
                  color: AppColors.gold,
                  borderRadius: BorderRadius.circular(12.w),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.gold.withValues(alpha: 0.5),
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: AppColors.white,
                      size: 14.w,
                    ),
                    SizedBox(width: 3.w),
                    AppText.c1(
                      context.l10n.levelBadge(level),
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 10.sp,
                    ),
                  ],
                ),
              ),
              AppText.b2(
                '$currentLevelXp / $neededForNext XP '
                '(${progressPercent.toInt()}%)',
                fontWeight: FontWeight.w700,
                color: AppColors.grayMedium,
                fontSize: 12.sp,
              ),
            ],
          ),
          SizedBox(height: 6.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(6.w),
            child: LinearProgressIndicator(
              value: progressFraction,
              minHeight: 8.h,
              backgroundColor: AppColors.grayLight,
              valueColor: AlwaysStoppedAnimation<Color>(
                progressColor ?? AppColors.gold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
