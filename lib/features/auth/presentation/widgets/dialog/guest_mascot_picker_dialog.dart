import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_dialog.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/shared/utils/user_name_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại 3D Game chọn linh vật đại diện (Bunny hoặc Pip) cho người chơi
class GuestMascotPickerDialog extends StatefulWidget {
  const GuestMascotPickerDialog({
    required this.uid,
    super.key,
  });

  final String uid;

  static Future<void> show(
    BuildContext context, {
    required String uid,
  }) {
    return AppDialog.show(
      context,
      title: 'CHỌN BẠN ĐỒNG HÀNH',
      showCloseButton: false,
      barrierDismissible: false,
      leading: Container(
        padding: EdgeInsets.all(4.w),
        decoration: BoxDecoration(
          color: AppColors.orange.withValues(alpha: 0.15),
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.auto_awesome_rounded,
          color: AppColors.orange,
          size: 16.r,
        ),
      ),
      child: GuestMascotPickerDialog(uid: uid),
    );
  }

  @override
  State<GuestMascotPickerDialog> createState() =>
      _GuestMascotPickerDialogState();
}

class _GuestMascotPickerDialogState extends State<GuestMascotPickerDialog> {
  late String _selectedMascot;
  bool _isSubmitting = false;

  @override
  void initState() {
    super.initState();
    final currentUser = context.read<AuthBloc>().state.currentUser;
    if (currentUser?.avatarUrl == UserNameGenerator.pipAvatar ||
        (currentUser?.displayName.toLowerCase().contains('pip') ?? false)) {
      _selectedMascot = UserNameGenerator.pip;
    } else {
      _selectedMascot = UserNameGenerator.bunny;
    }
  }

  void _onConfirm() {
    if (_isSubmitting) return;

    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());

    final isBunny = _selectedMascot == UserNameGenerator.bunny;
    final name = UserNameGenerator.generate(_selectedMascot, widget.uid);
    final avatar = isBunny
        ? UserNameGenerator.bunnyAvatar
        : UserNameGenerator.pipAvatar;

    setState(() {
      _isSubmitting = true;
    });

    context.read<AuthBloc>().add(
      AuthEvent.updateProfile(
        displayName: name,
        avatarUrl: avatar,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          _isSubmitting &&
          (previous.isLoading != current.isLoading ||
              previous.currentUser != current.currentUser ||
              previous.errorMessage != current.errorMessage),
      listener: (context, state) {
        if (!_isSubmitting) return;

        if (state.errorMessage != null && state.errorMessage!.isNotEmpty) {
          setState(() {
            _isSubmitting = false;
          });
          AppToast.showError(
            context,
            'Không thể cập nhật linh vật: ${state.errorMessage}',
          );
        } else if (state.currentUser != null &&
            state.currentUser!.persisted &&
            state.currentUser!.nameConfigured) {
          setState(() {
            _isSubmitting = false;
          });
          final name = state.currentUser!.displayName;
          Navigator.of(context).pop();
          AppToast.showSuccess(
            context,
            'Chào mừng $name đến với BuFoPia! Sẵn sàng so tài!',
          );
        }
      },
      builder: (context, state) {
        final isPaper = context.select<AppBloc, bool>(
          (bloc) => bloc.state.isPaperTheme,
        );

        final bodyColor = isPaper
            ? AppColors.paperTextMedium
            : AppColors.grayMedium;
        final isBunny = _selectedMascot == UserNameGenerator.bunny;
        final bunnyName = UserNameGenerator.generate(
          UserNameGenerator.bunny,
          widget.uid,
        );
        final pipName = UserNameGenerator.generate(
          UserNameGenerator.pip,
          widget.uid,
        );
        final isLoading = _isSubmitting || state.isLoading;

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 6.h),
            AppText.b2(
              'Chào mừng bạn đến với BuFoPia! Hãy chọn linh vật đại diện'
              ' để bắt đầu hành trình từ vựng:',
              textAlign: TextAlign.center,
              color: bodyColor,
              fontSize: 12.sp,
            ),
            SizedBox(height: 16.h),

            // Hàng 2 thẻ linh vật 3D Game (Bunny Hồng & Pip Cáo Xanh)
            Row(
              children: [
                // Thẻ Bunny (Tone Hồng dễ thương đồng bộ avatar)
                Expanded(
                  child: _Mascot3DCard(
                    mascotName: UserNameGenerator.bunny,
                    displayName: bunnyName,
                    tagText: 'Thỏ Tinh Anh',
                    avatarPath: UserNameGenerator.bunnyAvatar,
                    isSelected: isBunny,
                    isPaper: isPaper,
                    accentColor: AppColors.playerPinkDark,
                    borderColor: AppColors.playerPinkDark,
                    extrusionColor: AppColors.playerPinkShadow,
                    selectedBgColor: isPaper
                        ? AppColors.paperCardBg
                        : AppColors.playerPinkTagBg,
                    badgeBgColor: AppColors.playerPink.withValues(alpha: 0.15),
                    onTap: isLoading
                        ? () {}
                        : () {
                            setState(() {
                              _selectedMascot = UserNameGenerator.bunny;
                            });
                            context.read<AppBloc>().add(
                              const AppEvent.clickSoundPlayed(),
                            );
                          },
                  ),
                ),
                SizedBox(width: 12.w),

                // Thẻ Pip (Tone Xanh Dương đồng bộ chú Cáo Xanh)
                Expanded(
                  child: _Mascot3DCard(
                    mascotName: UserNameGenerator.pip,
                    displayName: pipName,
                    tagText: 'Cáo Thông Thái',
                    avatarPath: UserNameGenerator.pipAvatar,
                    isSelected: !isBunny,
                    isPaper: isPaper,
                    accentColor: AppColors.playerBlue,
                    borderColor: AppColors.playerBlue,
                    extrusionColor: AppColors.playerBlueDark,
                    selectedBgColor: isPaper
                        ? AppColors.paperCardBg
                        : AppColors.playerBlueTagBg,
                    badgeBgColor: AppColors.playerBlue.withValues(alpha: 0.15),
                    onTap: isLoading
                        ? () {}
                        : () {
                            setState(() {
                              _selectedMascot = UserNameGenerator.pip;
                            });
                            context.read<AppBloc>().add(
                              const AppEvent.clickSoundPlayed(),
                            );
                          },
                  ),
                ),
              ],
            ),

            SizedBox(height: 22.h),

            // Nút Xác nhận Bắt đầu 3D thích ứng màu theo linh vật đã chọn
            AppButton(
              text: isBunny ? 'BẮT ĐẦU VỚI BUNNY' : 'BẮT ĐẦU VỚI PIP',
              icon: Icon(
                Icons.play_arrow_rounded,
                color: AppColors.white,
                size: 20.r,
              ),
              iconAfter: true,
              height: 46.h,
              fontSize: 16.sp,
              isLoading: isLoading,
              gradient: isBunny
                  ? const LinearGradient(
                      colors: [
                        AppColors.playerPinkLight,
                        AppColors.playerPinkDark,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    )
                  : const LinearGradient(
                      colors: [
                        AppColors.playerBlueLight,
                        AppColors.playerBlueDark,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
              extrusionColor: isBunny
                  ? AppColors.playerPinkShadow
                  : AppColors.playerBlueDark,
              extrusionHeight: 3.5,
              borderRadius: BorderRadius.circular(16.r),
              onPressed: isLoading ? null : _onConfirm,
            ),
            SizedBox(height: 4.h),
          ],
        );
      },
    );
  }
}

/// Thẻ bài linh vật chuẩn 3D Game với hiệu ứng nổi khối gờ đáy và đổ bóng 2 lớp
class _Mascot3DCard extends StatefulWidget {
  const _Mascot3DCard({
    required this.mascotName,
    required this.displayName,
    required this.tagText,
    required this.avatarPath,
    required this.isSelected,
    required this.isPaper,
    required this.accentColor,
    required this.borderColor,
    required this.extrusionColor,
    required this.selectedBgColor,
    required this.badgeBgColor,
    required this.onTap,
  });

  final String mascotName;
  final String displayName;
  final String tagText;
  final String avatarPath;
  final bool isSelected;
  final bool isPaper;
  final Color accentColor;
  final Color borderColor;
  final Color extrusionColor;
  final Color selectedBgColor;
  final Color badgeBgColor;
  final VoidCallback onTap;

  @override
  State<_Mascot3DCard> createState() => _Mascot3DCardState();
}

class _Mascot3DCardState extends State<_Mascot3DCard> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    const extrusionHeight = 3.5;
    final cardBg = widget.isSelected
        ? widget.selectedBgColor
        : (widget.isPaper ? AppColors.paperCardBg : AppColors.white);

    final cardBorderColor = widget.isSelected
        ? widget.borderColor
        : (widget.isPaper ? AppColors.paperBorder : AppColors.grayLight);

    final currentExtrusionColor = widget.isSelected
        ? widget.extrusionColor
        : (widget.isPaper
            ? AppColors.paperExtrusion
            : AppColors.grayExtrusion);

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onTap();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        transform: Matrix4.translationValues(
          0,
          _isPressed ? extrusionHeight : 0,
          0,
        ),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: cardBg,
          borderRadius: BorderRadius.circular(18.r),
          border: Border.all(
            color: cardBorderColor,
            width: widget.isSelected ? 2.w : 1.5.w,
          ),
          boxShadow: _isPressed
              ? []
              : [
                  // Lớp 1: Gờ đáy 3D nổi khối
                  BoxShadow(
                    color: currentExtrusionColor,
                    offset: const Offset(0, extrusionHeight),
                  ),
                  // Lớp 2: Bóng đổ mờ lan toả
                  BoxShadow(
                    color: widget.isSelected
                        ? widget.accentColor.withValues(alpha: 0.22)
                        : AppColors.black.withValues(alpha: 0.05),
                    offset: const Offset(0, extrusionHeight + 2),
                    blurRadius: widget.isSelected ? 8.r : 4.r,
                  ),
                ],
        ),
        child: Column(
          children: [
            // Khung Avatar 3D viền tròn có bóng
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 60.r,
                  height: 60.r,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: widget.isSelected
                          ? widget.accentColor
                          : (widget.isPaper
                              ? AppColors.paperBorder
                              : AppColors.grayLight),
                      width: widget.isSelected ? 2.5.w : 1.5.w,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: widget.isSelected
                            ? widget.accentColor.withValues(alpha: 0.25)
                            : AppColors.black.withValues(alpha: 0.08),
                        offset: Offset(0, 2.h),
                        blurRadius: 4.r,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      widget.avatarPath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.person),
                    ),
                  ),
                ),
                // Huy hiệu Tick tròn xác nhận khi được chọn
                if (widget.isSelected)
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                        color: widget.accentColor,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.white,
                          width: 2.w,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: widget.extrusionColor,
                            offset: Offset(0, 1.5.h),
                          ),
                        ],
                      ),
                      child: Icon(
                        Icons.check_rounded,
                        color: AppColors.white,
                        size: 12.r,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 8.h),

            // Tên linh vật + mã (Cỡ chữ số chẵn 14.sp Bold)
            AppText.t3(
              widget.displayName,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
              color: widget.isSelected
                  ? widget.accentColor
                  : (widget.isPaper
                      ? AppColors.paperTextDark
                      : AppColors.grayDark),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 4.h),

            // Tag danh hiệu nổi 3D (Cỡ chữ số chẵn 10.sp)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
              decoration: BoxDecoration(
                color: widget.isSelected
                    ? widget.badgeBgColor
                    : (widget.isPaper
                        ? AppColors.paperSurface
                        : AppColors.grayLight.withValues(alpha: 0.5)),
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(
                  color: widget.isSelected
                      ? widget.accentColor.withValues(alpha: 0.3)
                      : (widget.isPaper
                          ? AppColors.paperBorder
                          : AppColors.grayLight),
                  width: 1.w,
                ),
              ),
              child: AppText.c1(
                widget.tagText,
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: widget.isSelected
                    ? widget.accentColor
                    : (widget.isPaper
                        ? AppColors.paperTextMuted
                        : AppColors.grayMedium),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
