import 'dart:async';

import 'package:bufopia/components/components.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/user_entity.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_avatar_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_edit_name_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ─────────────────────────────────────────────────────────────
// PlayerInfoDialog
// ─────────────────────────────────────────────────────────────

/// Hộp thoại xem và chỉnh sửa thông tin người chơi (Profile)
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
        : 'Alex';
    _selectedAvatarUrl = user?.avatarUrl;
  }

  void _onSave(UserEntity user, String newName) {
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
        AppSnackBar.showSuccess(context, 'Cập nhật hồ sơ thành công!');
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
      AppSnackBar.showSuccess(context, 'Đã cập nhật ảnh đại diện!');
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
    AppSnackBar.showSuccess(context, 'Đã đổi ảnh đại diện!');
  }

  void _copyId(String uid) {
    Clipboard.setData(ClipboardData(text: uid));
    AppSnackBar.showSuccess(context, 'Đã sao chép ID người chơi!');
  }

  /// Mở dialog đổi tên hiển thị
  Future<void> _openEditNameSheet(UserEntity user) async {
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

    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final user = state.currentUser ?? const UserEntity();
        final currentLevelXp = user.currentLevelXp;
        final neededForNext = user.neededForNext;
        final level = user.level;
        final progressPercent = neededForNext == 0
            ? 0.0
            : ((currentLevelXp / neededForNext) * 100);
        final progressFraction = (progressPercent / 100).clamp(0.0, 1.0);
        final uid = user.uid.isNotEmpty ? user.uid : 'V417IR';

        return AppGameDialog(
          title: 'Hồ sơ người chơi',
          icon: Icons.account_circle_rounded,
          headerTrailing: _buildIdBadge(uid),
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ── CỘT TRÁI ─────────────────────────────
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    _buildProfileCard(user, isPaper),
                    SizedBox(height: 6.h),
                    Row(
                      children: [
                        Expanded(
                          child: AppStreakBadge.study(streak: user.streak),
                        ),
                        SizedBox(width: 6.w),
                        Expanded(
                          child: AppStreakBadge.win(
                            winStreak: user.winStreak,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(width: 10.w),

              // ── CỘT PHẢI ─────────────────────────────
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    AppLevelProgressBar(
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
                    SizedBox(height: 6.h),
                    _buildMotivationCard(isPaper),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildIdBadge(String uid) {
    return GestureDetector(
      onTap: () => _copyId(uid),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
        decoration: BoxDecoration(
          color: AppColors.white.withValues(alpha: 0.18),
          borderRadius: BorderRadius.circular(10.w),
          border: Border.all(
            color: AppColors.white.withValues(alpha: 0.35),
            width: 1.w,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppText.c1(
              'ID: $uid',
              color: AppColors.white,
              fontWeight: FontWeight.w700,
              fontSize: 10.sp,
            ),
            SizedBox(width: 4.w),
            Icon(Icons.copy_rounded, color: AppColors.white, size: 11.w),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileCard(UserEntity user, bool isPaper) {
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: cardBg,
        borderRadius: BorderRadius.circular(8.w),
        border: Border.all(color: cardBorder, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              AppAvatar(
                avatarUrl: _selectedAvatarUrl ?? user.avatarUrl,
                size: 50.w,
                borderWidth: 2,
                showBadge: true,
                badgeColor: primaryAccent,
                badgeIconColor: AppColors.white,
                badgeSize: 18.w,
                onTap: _openAvatarPicker,
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.c1(
                      'TÊN HIỂN THỊ',
                      color: textDark,
                      fontWeight: FontWeight.w700,
                      fontSize: 12.sp,
                    ),
                    SizedBox(height: 4.h),
                    GestureDetector(
                      onTap: () => _openEditNameSheet(user),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 6.h,
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
                              child: AppText.c1(
                                _displayName,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color: textDark,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            if (_isSaving)
                              SizedBox(
                                width: 13.w,
                                height: 13.w,
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
                                size: 13.w,
                                color: textMuted,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 6.h),
          // ── Quick Avatars ────────────────────────
          Row(
            children: [
              AppText.c1(
                'Avatar có sẵn:',
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
        width: 26.w,
        height: 26.w,
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
                offset: Offset(0, 1.5.h),
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
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.military_tech_rounded,
                      color: iconColor,
                      size: 20.w,
                    ),
                    SizedBox(width: 4.w),
                    AppText.c1(
                      'Chiến binh từ vựng',
                      color: titleColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.sp,
                    ),
                  ],
                ),
                SizedBox(height: 2.h),
                AppText.c1(
                  'Thắng trận đấu để nhận thêm điểm XP và nâng cấp danh hiệu!',
                  color: subtitleColor,
                  fontSize: 12.sp,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
