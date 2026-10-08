import 'dart:async';

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/bloc/vocabulary_bloc.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/vocabulary_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VocabularyPage extends StatefulWidget {
  const VocabularyPage({
    super.key,
    this.isBotOpponent = true,
    this.topic = 'auto',
    this.roomCode,
    this.initialOpponentName,
    this.initialOpponentAvatar,
  });

  final bool isBotOpponent;
  final String topic;
  final String? roomCode;
  final String? initialOpponentName;
  final String? initialOpponentAvatar;

  @override
  State<VocabularyPage> createState() => _VocabularyPageState();
}

class _VocabularyPageState
    extends BasePageState<VocabularyPage, VocabularyBloc> {
  @override
  bool get useSafeArea => false;

  @override
  EdgeInsetsGeometry? get pagePadding => EdgeInsets.zero;

  bool _isOpponentLeftDialogShown = false;

  bool get isLocal2P =>
      !widget.isBotOpponent &&
      (widget.roomCode == null || widget.roomCode!.isEmpty);

  @override
  void initState() {
    super.initState();
    bloc.add(
      VocabularyEvent.initDeck(
        topic: widget.topic,
        isBotOpponent: widget.isBotOpponent,
        roomCode: widget.roomCode,
        initialOpponentName: widget.initialOpponentName,
        initialOpponentAvatar: widget.initialOpponentAvatar,
      ),
    );

    // Chế độ 2 người 1 máy thì xoay ngang (Landscape),
    // còn lại (Bot, Online, Phòng ID) thì giữ màn hình dọc (Portrait)
    if (isLocal2P) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    } else {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ]);
    }
  }

  @override
  void dispose() {
    // Luôn khôi phục về chế độ dọc khi rời màn hình đấu
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  void _handleBack() {
    if (!mounted) return;
    final state = bloc.state;

    // Nếu ván đấu đã kết thúc hoặc đối thủ đã rời thì thoát ngay
    if (state.isGameOver || state.isOpponentLeft) {
      if (Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
      return;
    }

    _showQuitConfirmationDialog();
  }

  void _showQuitConfirmationDialog() {
    final isPaper = context.read<AppBloc>().state.isPaperTheme;
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final dialogMaxWidth = isLandscape ? 380.0 : 480.w;
    final dialogMaxHeight = isLandscape ? 200.0 : 220.h;
    final contentFontSize = isLandscape ? 13.5 : 14.sp;
    final btnWidth = isLandscape ? 110.0 : 120.w;
    final btnHeight = isLandscape ? 34.0 : 36.h;
    final btnFontSize = isLandscape ? 12.0 : 12.sp;
    final btnSpacing = isLandscape ? 12.0 : 14.w;
    final contentSpacing = isLandscape ? 10.0 : 14.h;
    final footerMsg = isLocal2P
        ? '⚠️ Rời trận sẽ kết thúc ván đấu của cả 2 người chơi!'
        : '⚠️ Rời trận giữa chừng sẽ tính là bạn thua cuộc!';

    // Hiển thị dialog xác nhận nếu đang trong ván đấu
    AppGameDialog.show<void>(
      context: context,
      title: 'RỜI KHỎI TRẬN ĐẤU?',
      icon: Icons.logout_rounded,
      maxWidth: dialogMaxWidth,
      maxHeight: dialogMaxHeight,
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [
              AppColors.paperGreen,
              AppColors.paperGreenDark,
            ]
          : const [
              AppColors.blueLight,
              AppColors.blueDark,
            ],
      boxShadow: isPaper
          ? [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, isLandscape ? 3 : 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.12),
                blurRadius: isLandscape ? 12 : 16.r,
                offset: Offset(0, isLandscape ? 6 : 8.h),
              ),
            ]
          : null,
      footerText: footerMsg,
      footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
      footerBorderColor: isPaper ? AppColors.paperBorder : null,
      footerTextColor: isPaper ? AppColors.paperTextMedium : null,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText.b1(
            'Bạn có chắc chắn muốn rời khỏi trận đấu này không?',
            color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            fontWeight: FontWeight.w700,
            fontSize: contentFontSize,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: contentSpacing),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (isPaper)
                AppButton(
                  text: 'Ở LẠI',
                  width: btnWidth,
                  height: btnHeight,
                  fontSize: btnFontSize,
                  fontWeight: FontWeight.w700,
                  backgroundColor: AppColors.paperSurface,
                  borderColor: AppColors.paperBorder,
                  extrusionColor: AppColors.paperExtrusion,
                  textColor: AppColors.paperTextDark,
                  onPressed: () =>
                      Navigator.of(context, rootNavigator: true).pop(),
                )
              else
                AppButton.secondary(
                  text: 'Ở LẠI',
                  width: btnWidth,
                  height: btnHeight,
                  fontSize: btnFontSize,
                  onPressed: () =>
                      Navigator.of(context, rootNavigator: true).pop(),
                ),
              SizedBox(width: btnSpacing),
              if (isPaper)
                AppButton(
                  text: 'RỜI TRẬN',
                  width: btnWidth,
                  height: btnHeight,
                  fontSize: btnFontSize,
                  fontWeight: FontWeight.w700,
                  backgroundColor: AppColors.dialogCloseBg,
                  borderColor: AppColors.dialogCloseBorder,
                  extrusionColor: AppColors.dialogCloseExtrusion,
                  textColor: AppColors.dialogCloseIcon,
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                    if (mounted && Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                    AppSnackBar.showWarning(
                      context,
                      'Bạn đã rời khỏi trận đấu.',
                      title: 'ĐÃ THOÁT TRẬN',
                    );
                  },
                )
              else
                AppButton.danger(
                  text: 'RỜI TRẬN',
                  width: btnWidth,
                  height: btnHeight,
                  fontSize: btnFontSize,
                  onPressed: () {
                    Navigator.of(context, rootNavigator: true).pop();
                    if (mounted && Navigator.of(context).canPop()) {
                      Navigator.of(context).pop();
                    }
                    AppSnackBar.showWarning(
                      context,
                      'Bạn đã rời khỏi trận đấu.',
                      title: 'ĐÃ THOÁT TRẬN',
                    );
                  },
                ),
            ],
          ),
        ],
      ),
    );
  }

  void _showOpponentLeftDialog() {
    if (_isOpponentLeftDialogShown || !mounted) return;
    _isOpponentLeftDialogShown = true;

    var isDismissed = false;
    Timer? autoDismissTimer;

    void handleClose() {
      if (isDismissed) return;
      isDismissed = true;
      autoDismissTimer?.cancel();
      if (mounted) {
        if (Navigator.of(context, rootNavigator: true).canPop()) {
          Navigator.of(context, rootNavigator: true).pop();
        }
        if (Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
        AppSnackBar.showWarning(
          context,
          'Đối thủ đã thoát khỏi trận đấu!',
          title: 'TRẬN ĐẤU KẾT THÚC',
        );
      }
    }

    autoDismissTimer = Timer(const Duration(seconds: 4), handleClose);

    final isPaper = context.read<AppBloc>().state.isPaperTheme;

    AppGameDialog.show<void>(
      context: context,
      title: 'ĐỐI THỦ ĐÃ RỜI TRẬN',
      icon: Icons.person_off_rounded,
      maxWidth: 520.w,
      maxHeight: 260.h,
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [
              AppColors.paperGreen,
              AppColors.paperGreenDark,
            ]
          : const [
              AppColors.blueLight,
              AppColors.blueDark,
            ],
      boxShadow: isPaper
          ? [
              BoxShadow(
                color: AppColors.paperExtrusion,
                offset: Offset(0, 4.h),
              ),
              BoxShadow(
                color: AppColors.black.withValues(alpha: 0.12),
                blurRadius: 16.r,
                offset: Offset(0, 8.h),
              ),
            ]
          : null,
      footerText: '⚡ Trận đấu kết thúc do đối thủ rời phòng ⚡',
      footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
      footerBorderColor: isPaper ? AppColors.paperBorder : null,
      footerTextColor: isPaper ? AppColors.paperTextMedium : null,
      onClose: handleClose,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 48.r,
            height: 48.r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isPaper
                  ? AppColors.paperAmberBadgeBg
                  : AppColors.gold.withValues(alpha: 0.15),
              border: Border.all(
                color: isPaper
                    ? AppColors.paperAmberBadgeBorder
                    : AppColors.gold,
                width: 2.w,
              ),
            ),
            alignment: Alignment.center,
            child: Icon(
              Icons.emoji_events_rounded,
              color: isPaper ? AppColors.paperAmberBadgeText : AppColors.gold,
              size: 28.r,
            ),
          ),
          SizedBox(height: 8.h),
          AppText.t2(
            'CHIẾN THẮNG DANH DỰ! 🏆',
            color: isPaper ? AppColors.paperStreakFlame : AppColors.orangeDark,
            fontWeight: FontWeight.w700,
            fontSize: 16.sp,
          ),
          SizedBox(height: 4.h),
          AppText.b2(
            'Đối thủ đã thoát khỏi trận đấu giữa chừng.'
            '\nChiến thắng thuộc về bạn!',
            color: isPaper ? AppColors.paperTextDark : AppColors.grayMedium,
            fontWeight: FontWeight.w700,
            fontSize: 12.sp,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 12.h),
          if (isPaper)
            AppButton(
              text: 'VỀ TRANG CHỦ',
              icon: const Icon(
                Icons.home_rounded,
                color: AppColors.white,
                size: 16,
              ),
              width: 180.w,
              height: 38.h,
              fontSize: 12.sp,
              fontWeight: FontWeight.w700,
              backgroundColor: AppColors.paperGreen,
              borderColor: AppColors.paperGreenBorder,
              extrusionColor: AppColors.paperGreenExtrusion,
              onPressed: handleClose,
            )
          else
            AppButton.success(
              text: 'VỀ TRANG CHỦ',
              icon: const Icon(
                Icons.home_rounded,
                color: AppColors.white,
                size: 18,
              ),
              width: 180.w,
              height: 38.h,
              fontSize: 12.sp,
              onPressed: handleClose,
            ),
        ],
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    final currentUser = context.read<AuthBloc>().state.currentUser;
    final p1Name = currentUser?.displayName.isNotEmpty == true
        ? currentUser!.displayName
        : 'Alex';
    final p1Avatar = currentUser?.avatarUrl.isNotEmpty == true
        ? currentUser!.avatarUrl
        : 'assets/images/pip-avatar.webp';

    return MultiBlocListener(
      listeners: [
        BlocListener<VocabularyBloc, VocabularyState>(
          listenWhen: (previous, current) =>
              previous.reward != current.reward && current.reward?.user != null,
          listener: (context, state) {
            final user = state.reward?.user;
            if (user != null) {
              context.read<AuthBloc>().add(AuthEvent.userUpdated(user));
            }
          },
        ),
        BlocListener<VocabularyBloc, VocabularyState>(
          listenWhen: (previous, current) =>
              !previous.isOpponentLeft && current.isOpponentLeft,
          listener: (context, state) {
            _showOpponentLeftDialog();
          },
        ),
      ],
      child: PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, result) {
          if (didPop) return;
          _handleBack();
        },
        child: Scaffold(
          body: OrientationBuilder(
            builder: (context, orientation) {
              final isPaper = context.select<AppBloc, bool>(
                (b) => b.state.isPaperTheme,
              );

              // Ở chế độ 2 người cùng máy (Local 2P),
              /// khi máy đang xoay từ dọc sang ngang,
              // hiển thị ảnh nền để chuyển cảnh mượt mà và chống giật hình
              if (isLocal2P && orientation == Orientation.portrait) {
                return Stack(
                  fit: StackFit.expand,
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        isPaper
                            ? 'assets/images/background_switch/app_background_1.webp'
                            : 'assets/images/quick_battle/background_quick_battle.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                );
              }
              final battleState = context.watch<VocabularyBloc>().state;
              final p2Name = widget.isBotOpponent
                  ? 'BOT (VỪA)'
                  : (battleState.opponentName?.isNotEmpty == true
                        ? battleState.opponentName!
                        : (widget.initialOpponentName?.isNotEmpty == true
                              ? widget.initialOpponentName!
                              : (isLocal2P ? 'NGƯỜI CHƠI 2' : 'ĐỐI THỦ')));
              final p2Avatar = widget.isBotOpponent
                  ? (p1Avatar.contains('pip')
                        ? 'assets/images/bunny-avatar.webp'
                        : 'assets/images/pip-avatar.webp')
                  : (battleState.opponentAvatar?.isNotEmpty == true
                        ? battleState.opponentAvatar!
                        : (widget.initialOpponentAvatar?.isNotEmpty == true
                              ? widget.initialOpponentAvatar!
                              : 'assets/images/bunny-avatar.webp'));

              return VocabularyBody(
                onBackPressed: _handleBack,
                player1Name: p1Name,
                player1Avatar: p1Avatar,
                player2Name: p2Name,
                player2Avatar: p2Avatar,
                isLocal2P: isLocal2P,
              );
            },
          ),
        ),
      ),
    );
  }
}
