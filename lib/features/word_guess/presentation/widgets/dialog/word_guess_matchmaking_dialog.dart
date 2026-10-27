import 'dart:async';

import 'package:bufopia/components/app_avatar.dart';
import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_radar_scanner.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/domain/usecases/get_cached_user_use_case.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/shared/di/di.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:bufopia/shared/services/firebase/firebase_auth_service.dart';
import 'package:bufopia/shared/services/socket/models/socket_event.dart';
import 'package:bufopia/shared/services/socket/word_guess_socket_service.dart';
import 'package:bufopia/shared/utils/string_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Hộp thoại Tìm Trận Online cho trò chơi Đoán Từ Khuyết (Word Guess).
/// Đồng bộ hoàn toàn UI/UX Radar Scanner với Vocabulary và Word Chain.
class WordGuessMatchmakingDialog extends StatefulWidget {
  const WordGuessMatchmakingDialog({
    required this.onMatched,
    required this.topic,
    this.difficulty = 'medium',
    super.key,
  });

  final String topic;
  final String difficulty;
  final void Function(
    String roomCode,
    String rivalName,
    String rivalAvatar,
  )
  onMatched;

  static Future<void> show(
    BuildContext context, {
    required String topic,
    required void Function(
      String roomCode,
      String rivalName,
      String rivalAvatar,
    )
    onMatched,
    String difficulty = 'medium',
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.55),
      builder: (_) => WordGuessMatchmakingDialog(
        topic: topic,
        difficulty: difficulty,
        onMatched: onMatched,
      ),
    );
  }

  @override
  State<WordGuessMatchmakingDialog> createState() =>
      _WordGuessMatchmakingDialogState();
}

class _WordGuessMatchmakingDialogState extends State<WordGuessMatchmakingDialog>
    with TickerProviderStateMixin {
  late final WordGuessSocketService _socketService;
  StreamSubscription<SocketEvent>? _subscription;
  Timer? _timer;
  int _secondsElapsed = 0;

  // Hiệu ứng nhịp đập cho chấm xanh trạng thái
  late final AnimationController _pulseController;
  late final Animation<double> _pulseAnimation;

  bool _isMatched = false;
  MatchmakeMatchedEvent? _matchedEvent;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    _socketService = sl<WordGuessSocketService>();

    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);

    _pulseAnimation = Tween<double>(begin: 0.8, end: 1.2).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );

    _startTimer();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _connectMatchmake();
      }
    });
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      if (mounted && !_isMatched) {
        setState(() => _secondsElapsed++);
      }
    });
  }

  Future<void> _connectMatchmake() async {
    final authState = context.read<AuthBloc>().state;
    final cachedUser = sl<GetCachedUserUseCase>().execute();
    final user = authState.currentUser ?? cachedUser;

    final defaultPlayerName = context.l10n.player;
    final token = await sl<FirebaseAuthService>().getIdToken();
    final uid = user?.uid.isNotEmpty == true ? user!.uid : 'guest';
    final name = (user?.displayName.isNotEmpty == true)
        ? user!.displayName
        : defaultPlayerName;
    final avatar = user?.avatarUrl;

    _subscription = _socketService.eventStream.listen(
      _handleSocketEvent,
      onError: (Object error) {
        if (!mounted) return;
        setState(
          () => _errorMessage = context.l10n.connectionError(
            error.toString(),
          ),
        );
      },
    );

    await _socketService.connectMatchmake(
      uid: uid,
      name: name,
      topic: widget.topic,
      token: token,
      avatar: avatar,
      difficulty: widget.difficulty,
    );
  }

  void _handleSocketEvent(SocketEvent event) {
    if (!mounted) return;

    if (event is MatchmakeMatchedEvent) {
      _timer?.cancel();
      setState(() {
        _isMatched = true;
        _matchedEvent = event;
      });
      SoundManager.playWin();

      Future<void>.delayed(const Duration(milliseconds: 2200), () {
        if (!mounted) return;
        Navigator.of(context).pop();
        widget.onMatched(
          event.roomCode,
          event.rivalName,
          event.rivalAvatar,
        );
      });
    } else if (event is SocketErrorEvent) {
      setState(() => _errorMessage = event.message);
      AppToast.showError(context, event.message);
    }
  }

  void _onCancel() {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    _socketService
      ..sendCancel()
      ..disconnect();
    Navigator.of(context).pop();
    AppToast.showWarning(context, context.l10n.matchmakingCancelled);
  }

  @override
  void dispose() {
    _timer?.cancel();
    _subscription?.cancel();
    _pulseController.dispose();
    if (!_isMatched) {
      _socketService
        ..sendCancel()
        ..disconnect();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final user = context.select<AuthBloc, User?>((b) => b.state.currentUser);

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 16.h),
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 350.w),
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 280),
            child: _isMatched
                ? _buildMatchedVsView(context, isPaper, user)
                : _buildSearchingView(context, isPaper, user),
          ),
        ),
      ),
    );
  }

  /// ── GIAO DIỆN TÌM TRẬN THÀNH CÔNG (MATCHED VS SCREEN GIỐNG WEB 100%) ─────
  Widget _buildMatchedVsView(
    BuildContext context,
    bool isPaper,
    User? user,
  ) {
    final l10n = context.l10n;
    final myName = (user?.displayName.isNotEmpty == true)
        ? user!.displayName
        : l10n.player;
    final rivalName = (_matchedEvent?.rivalName.isNotEmpty == true)
        ? _matchedEvent!.rivalName
        : l10n.humanOpponent;

    return Container(
      key: const ValueKey('matched_vs_view'),
      padding: EdgeInsets.fromLTRB(18.w, 18.h, 18.w, 18.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperCardBg : AppColors.white,
        borderRadius: BorderRadius.circular(22.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.classicBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper ? AppColors.paperExtrusion : AppColors.grayExtrusion,
            offset: Offset(0, 4.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.12),
            blurRadius: 16.r,
            offset: Offset(0, 8.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Huy hiệu "🗡️ ĐÃ TÌM THẤY ĐỐI THỦ"
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
            decoration: BoxDecoration(
              color: AppColors.levelBadgeBg,
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(
                color: AppColors.levelBadgeBorder,
                width: 1.w,
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.sports_kabaddi_rounded,
                  size: 14.r,
                  color: AppColors.levelBadgeText,
                ),
                SizedBox(width: 4.w),
                AppText.c1(
                  l10n.matchedOpponentFound,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.levelBadgeText,
                ),
              ],
            ),
          ),

          SizedBox(height: 10.h),

          // 2. Tiêu đề "SẴN SÀNG TRANH TÀI"
          AppText.t2(
            l10n.readyToCompete,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
            letterSpacing: 0.5,
          ),

          SizedBox(height: 18.h),

          // 3. Đấu trường VS Arena: Bạn vs Đối thủ
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Cột bên trái: Người chơi (Bạn)
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.r),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.playerPink,
                          width: 3.w,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.playerPink.withValues(alpha: 0.25),
                            blurRadius: 8.r,
                            offset: Offset(0, 3.h),
                          ),
                        ],
                      ),
                      child: AppAvatar(
                        avatarUrl: user?.avatarUrl,
                        size: 64.r,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    AppText.b2(
                      myName,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.playerPinkTagBg,
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                          color: AppColors.playerPinkBorder,
                          width: 1.w,
                        ),
                      ),
                      child: AppText.c1(
                        l10n.you,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.playerPinkDark,
                      ),
                    ),
                  ],
                ),
              ),

              // Huy hiệu tròn "VS" rực rỡ ở chính giữa
              Container(
                width: 38.r,
                height: 38.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppColors.orange,
                      AppColors.red,
                    ],
                  ),
                  border: Border.all(
                    color: AppColors.white,
                    width: 2.w,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.redDark,
                      offset: Offset(0, 2.h),
                    ),
                  ],
                ),
                child: Center(
                  child: AppText.t3(
                    'VS',
                    color: AppColors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              // Cột bên phải: Đối thủ
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.all(2.r),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColors.playerBlue,
                          width: 3.w,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.playerBlue.withValues(alpha: 0.25),
                            blurRadius: 8.r,
                            offset: Offset(0, 3.h),
                          ),
                        ],
                      ),
                      child: AppAvatar(
                        avatarUrl: _matchedEvent?.rivalAvatar,
                        size: 64.r,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    AppText.b2(
                      rivalName,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.grayDark,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10.w,
                        vertical: 2.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.playerBlueTagBg,
                        borderRadius: BorderRadius.circular(6.r),
                        border: Border.all(
                          color: AppColors.playerBlueBorder,
                          width: 1.w,
                        ),
                      ),
                      child: AppText.c1(
                        l10n.humanOpponent,
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: AppColors.playerBlueDark,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 18.h),

          // 4. Trạng thái "Đang chờ đối thủ sẵn sàng..."
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 14.r,
                height: 14.r,
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    isPaper
                        ? AppColors.paperGreenDark
                        : AppColors.modeBotButtonDark,
                  ),
                ),
              ),
              SizedBox(width: 8.w),
              AppText.c1(
                l10n.waitingForOpponentReadyDesc,
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: isPaper ? AppColors.paperGreenDark : AppColors.grayDark,
              ),
            ],
          ),

          SizedBox(height: 16.h),

          // 5. Nút "Về trang chủ"
          AppButton(
            text: l10n.home,
            height: 32.h,
            width: 120.w,
            fontSize: 12.sp,
            backgroundColor: isPaper
                ? AppColors.feedbackWarmBeigeDark
                : AppColors.white,
            borderColor: isPaper
                ? AppColors.feedbackSandBorder
                : AppColors.grayLight,
            extrusionColor: isPaper
                ? AppColors.feedbackSandExtrusion
                : AppColors.grayExtrusion,
            textColor: isPaper
                ? AppColors.feedbackTextBrown
                : AppColors.grayDark,
            extrusionHeight: 2.h,
            borderRadius: BorderRadius.circular(8.r),
            onPressed: _onCancel,
          ),
        ],
      ),
    );
  }

  /// ── GIAO DIỆN QUÉT RADAR ĐANG TÌM TRẬN ────────────────────────────────────
  Widget _buildSearchingView(
    BuildContext context,
    bool isPaper,
    User? user,
  ) {
    final l10n = context.l10n;

    return Container(
      key: const ValueKey('searching_view'),
      padding: EdgeInsets.fromLTRB(16.w, 14.h, 16.w, 16.h),
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperCardBg : AppColors.white,
        borderRadius: BorderRadius.circular(22.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.classicBorder,
          width: 1.5.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper ? AppColors.paperExtrusion : AppColors.grayExtrusion,
            offset: Offset(0, 4.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.12),
            blurRadius: 16.r,
            offset: Offset(0, 8.h),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 1. Header Bar: Icon, Tiêu đề, Timer, Nút đóng X
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4.r),
                decoration: BoxDecoration(
                  color: isPaper
                      ? AppColors.paperGreen.withValues(alpha: 0.12)
                      : AppColors.sky.withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Icon(
                  Icons.sensors_rounded,
                  size: 16.r,
                  color: isPaper ? AppColors.paperGreenDark : AppColors.skyDark,
                ),
              ),
              SizedBox(width: 8.w),
              Expanded(
                child: AppText.t3(
                  l10n.findMatchOnline,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: isPaper ? AppColors.paperTextDark : AppColors.grayDark,
                ),
              ),
              // Timer Capsule
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 2.h,
                ),
                decoration: BoxDecoration(
                  color: isPaper
                      ? AppColors.paperSurface
                      : AppColors.skySurface,
                  borderRadius: BorderRadius.circular(12.r),
                  border: Border.all(
                    color: isPaper
                        ? AppColors.paperBorder
                        : AppColors.skyBorder,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.timer_outlined,
                      size: 12.r,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.skyDark,
                    ),
                    SizedBox(width: 4.w),
                    AppText.c1(
                      StringUtils.formatDuration(_secondsElapsed),
                      fontWeight: FontWeight.w700,
                      fontSize: 10.sp,
                      color: isPaper
                          ? AppColors.paperTextDark
                          : AppColors.skyDark,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 6.w),
              GestureDetector(
                onTap: _onCancel,
                child: Container(
                  padding: EdgeInsets.all(4.r),
                  decoration: BoxDecoration(
                    color: AppColors.dialogCloseBg,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.dialogCloseBorder),
                  ),
                  child: Icon(
                    Icons.close_rounded,
                    size: 14.r,
                    color: AppColors.dialogCloseIcon,
                  ),
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          // 2. Chấm xanh nhấp nháy + Thông điệp đang tìm kiếm
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: _pulseAnimation,
                child: Container(
                  width: 8.r,
                  height: 8.r,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: isPaper
                        ? AppColors.paperGreen
                        : AppColors.radarGreenLight,
                    boxShadow: [
                      BoxShadow(
                        color:
                            (isPaper
                                    ? AppColors.paperGreen
                                    : AppColors.radarGreenLight)
                                .withValues(alpha: 0.6),
                        blurRadius: 4.r,
                        spreadRadius: 1.r,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 6.w),
              AppText.c1(
                widget.topic != 'auto'
                    ? l10n.findingTopic(widget.topic.toUpperCase())
                    : l10n.findingOpponent,
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                color: isPaper ? AppColors.paperGreenDark : AppColors.grayDark,
              ),
            ],
          ),

          if (_errorMessage != null) ...[
            SizedBox(height: 6.h),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 8.w,
                vertical: 2.h,
              ),
              decoration: BoxDecoration(
                color: AppColors.dialogCloseBg,
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: AppColors.dialogCloseBorder),
              ),
              child: AppText.c1(
                _errorMessage!,
                color: AppColors.redDark,
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],

          SizedBox(height: 12.h),

          // 3. Radar Scanner
          AppRadarScanner(
            avatarUrl: user?.avatarUrl,
            isMatched: false,
            isPaperTheme: isPaper,
            size: 86.r,
          ),

          SizedBox(height: 14.h),

          // 4. Nút HỦY TÌM TRẬN
          AppButton(
            height: 30.h,
            width: 136.w,
            fontSize: 12.sp,
            onPressed: _onCancel,
            backgroundColor: AppColors.dialogCloseBg,
            borderColor: AppColors.dialogCloseBorder,
            extrusionColor: AppColors.dialogCloseExtrusion,
            textColor: AppColors.dialogCloseIcon,
            icon: Icon(
              Icons.close_rounded,
              size: 14.r,
              color: AppColors.dialogCloseIcon,
            ),
            text: l10n.cancelMatchmaking,
          ),
        ],
      ),
    );
  }
}
