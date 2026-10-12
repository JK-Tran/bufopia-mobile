import 'dart:async';

import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/domain/entities/user.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/word_chain/presentation/bloc/word_chain_bloc.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/dialog/word_chain_result_dialog.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/dialog/word_chain_surrender_dialog.dart';
import 'package:bufopia/features/word_chain/presentation/widgets/word_chain_body.dart';
import 'package:bufopia/shared/services/audio/app_audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

/// Màn hình chính của trò chơi Nối từ (Word Chain).
class WordChainPage extends StatefulWidget {
  const WordChainPage({
    super.key,
    this.mode = WordChainGameMode.bot,
    this.relaxed = false,
    this.roomCode,
    this.language = 'en',
    this.initialUid,
    this.initialName,
    this.initialAvatar,
  });

  final WordChainGameMode mode;
  final bool relaxed;
  final String? roomCode;
  final String language;
  final String? initialUid;
  final String? initialName;
  final String? initialAvatar;

  @override
  State<WordChainPage> createState() => _WordChainPageState();
}

class _WordChainPageState extends State<WordChainPage>
    with WidgetsBindingObserver {
  late final WordChainBloc _bloc;
  int _lastMessageCount = 0;
  bool _isResultDialogShown = false;
  bool _isOpponentLeftDialogShown = false;
  bool _isExiting = false;
  String? _lastErrorMessage;

  static const String _classicBgPath = 'assets/images/app_background.webp';
  static const String _paperBgPath =
      'assets/images/background_switch/app_background_1.webp';

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _bloc = GetIt.instance.get<WordChainBloc>();
    _initGame();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused ||
        state == AppLifecycleState.inactive) {
      _bloc.add(const WordChainEvent.appAway());
    }
  }

  void _initGame() {
    final authState = context.read<AuthBloc>().state;
    final currentUser = authState.currentUser;

    final uid =
        widget.initialUid ??
        currentUser?.uid ??
        'player_${DateTime.now().millisecondsSinceEpoch}';
    final name =
        widget.initialName ??
        (currentUser?.displayName.isNotEmpty == true
            ? currentUser!.displayName
            : 'Bạn');
    final avatar = widget.initialAvatar ?? currentUser?.avatarUrl;

    switch (widget.mode) {
      case WordChainGameMode.bot:
        _bloc.add(
          WordChainEvent.startBotGame(
            uid: uid,
            relaxed: widget.relaxed,
            language: widget.language,
          ),
        );
      case WordChainGameMode.online:
        _bloc.add(
          WordChainEvent.startOnlineMatchmake(
            uid: uid,
            name: name,
            avatar: avatar,
            relaxed: widget.relaxed,
            language: widget.language,
          ),
        );
      case WordChainGameMode.room:
        _bloc.add(
          WordChainEvent.joinRoom(
            roomCode: widget.roomCode ?? '',
            uid: uid,
            name: name,
            avatar: avatar,
            relaxed: widget.relaxed,
            language: widget.language,
          ),
        );
    }
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _bloc.close();
    super.dispose();
  }

  void _handleBack() {
    if (_isExiting) return;

    if (_bloc.state.isGameOver || _bloc.state.isOpponentLeft) {
      _isExiting = true;
      if (mounted && Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
      return;
    }

    WordChainSurrenderDialog.show(
      context,
      title: 'THOÁT TRÒ CHƠI',
      message: 'Bạn có chắc muốn thoát trò chơi? Ván đấu hiện tại sẽ kết thúc.',
      confirmText: 'Thoát',
      onConfirm: () {
        _isExiting = true;
        _bloc.add(const WordChainEvent.surrender());
        if (mounted && Navigator.of(context).canPop()) {
          Navigator.of(context).pop();
        }
      },
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
      child: BlocBuilder<WordChainBloc, WordChainState>(
        bloc: _bloc,
        builder: (context, state) {
          final reward = state.reward;
          return Column(
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
                  color:
                      isPaper ? AppColors.paperAmberBadgeText : AppColors.gold,
                  size: 28.r,
                ),
              ),
              SizedBox(height: 8.h),
              AppText.t2(
                'CHIẾN THẮNG DANH DỰ! 🏆',
                color:
                    isPaper ? AppColors.paperStreakFlame : AppColors.orangeDark,
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
              if (reward != null && reward.gainedXp > 0) ...[
                SizedBox(height: 8.h),
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 14.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: isPaper
                        ? AppColors.paperAmberBadgeBg
                        : AppColors.gold.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(12.r),
                    border: Border.all(
                      color: isPaper
                          ? AppColors.paperAmberBadgeBorder
                          : AppColors.gold,
                      width: 1.5.w,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.star_rounded,
                        color: isPaper
                            ? AppColors.paperAmberBadgeText
                            : AppColors.orangeDark,
                        size: 18.r,
                      ),
                      SizedBox(width: 4.w),
                      AppText.t2(
                        '+${reward.gainedXp} EXP',
                        color: isPaper
                            ? AppColors.paperAmberBadgeText
                            : AppColors.orangeDark,
                        fontWeight: FontWeight.w800,
                        fontSize: 14.sp,
                      ),
                    ],
                  ),
                ),
              ],
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
          );
        },
      ),
    );
  }

  void _handlePlayAudio(String word) {
    if (word.isNotEmpty) {
      GetIt.instance.get<AppAudioService>().speakWord(word);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final bgAsset = isPaper ? _paperBgPath : _classicBgPath;

    final currentUser = context.select<AuthBloc, User?>(
      (b) => b.state.currentUser,
    );
    final myName =
        widget.initialName ??
        (currentUser?.displayName.isNotEmpty == true
            ? currentUser!.displayName
            : 'Bạn');
    final myAvatar = widget.initialAvatar ?? currentUser?.avatarUrl;

    return BlocProvider.value(
      value: _bloc,
      child: BlocListener<WordChainBloc, WordChainState>(
        listener: (context, state) {
          // 1. Tự động đọc phát âm khi có từ mới trong chuỗi
          if (state.gameState.messages.length > _lastMessageCount) {
            _lastMessageCount = state.gameState.messages.length;
            final latestMsg = state.gameState.messages.last;
            final word = latestMsg.entry.word;
            _handlePlayAudio(word);
          } else if (state.gameState.messages.isEmpty) {
            _lastMessageCount = 0;
          }

          // 2. Hiển thị thông báo lỗi nếu có
          // (chỉ hiển thị 1 lần khi có lỗi mới)
          if (state.errorMessage != null &&
              state.errorMessage!.isNotEmpty &&
              state.errorMessage != _lastErrorMessage) {
            _lastErrorMessage = state.errorMessage;
            AppSnackBar.showError(context, state.errorMessage!);
          } else if (state.errorMessage == null) {
            _lastErrorMessage = null;
          }

          // 3. Đối thủ rời trận
          if (state.isOpponentLeft &&
              !_isOpponentLeftDialogShown &&
              !_isExiting) {
            if (_isResultDialogShown) {
              _isResultDialogShown = false;
              if (Navigator.of(context, rootNavigator: true).canPop()) {
                Navigator.of(context, rootNavigator: true).pop();
              }
            }
            _showOpponentLeftDialog();
          }

          // 4. Quản lý trạng thái Dialog kết thúc ván đấu
          if (!state.isGameOver) {
            if (_isResultDialogShown) {
              _isResultDialogShown = false;
              if (Navigator.of(context, rootNavigator: true).canPop()) {
                Navigator.of(context, rootNavigator: true).pop();
              }
            }
          } else if (!_isResultDialogShown &&
              !_isExiting &&
              !state.isOpponentLeft) {
            _isResultDialogShown = true;
            final isWinner = state.gameState.winner == state.myPlayerIndex;
            final myIdx = state.myPlayerIndex;
            final p1Msgs = state.gameState.messages
                .where((m) => m.actor == myIdx)
                .toList();
            final p2Msgs = state.gameState.messages
                .where((m) => m.actor != myIdx)
                .toList();
            final p1Words = p1Msgs.length;
            final p2Words = p2Msgs.length;
            final p1Mistakes = state.gameState.mistakes.isNotEmpty
                ? state.gameState.mistakes[myIdx]
                : 0;
            final p2Mistakes = state.gameState.mistakes.length > 1
                ? state.gameState.mistakes[1 - myIdx]
                : 0;
            final p1Acc = (p1Words + p1Mistakes) == 0
                ? '100%'
                : '${((p1Words / (p1Words + p1Mistakes)) * 100).toInt()}%';
            final p2Acc = (p2Words + p2Mistakes) == 0
                ? '100%'
                : '${((p2Words / (p2Words + p2Mistakes)) * 100).toInt()}%';
            final p1Lives = state.gameState.lives.isNotEmpty
                ? (state.gameState.lives[myIdx] ?? 3)
                : 3;
            final p2Lives = state.gameState.lives.length > 1
                ? (state.gameState.lives[1 - myIdx] ?? 3)
                : 3;

            WordChainResultDialog.show(
              context,
              bloc: _bloc,
              isWinner: isWinner,
              finishReason: state.gameState.finishReason,
              reward: state.reward,
              player1Name: myName,
              player1Avatar: myAvatar,
              player1Lives: p1Lives,
              player2Name: state.rivalName,
              player2Avatar: state.rivalAvatar,
              player2Lives: p2Lives,
              p1CorrectCount: p1Words,
              p2CorrectCount: p2Words,
              p1Accuracy: p1Acc,
              p2Accuracy: p2Acc,
              onRematch: () {
                _lastMessageCount = 0;
                _bloc.add(const WordChainEvent.requestRematch());
              },
              onBackHome: () {
                _isExiting = true;
                if (mounted && Navigator.of(context).canPop()) {
                  Navigator.of(context).pop();
                }
              },
            );
          }
        },
        child: PopScope(
          canPop: false,
          onPopInvokedWithResult: (didPop, _) {
            if (didPop) return;
            _handleBack();
          },
          child: Scaffold(
            body: Stack(
              children: [
                // Hình nền đồng bộ theo theme
                Positioned.fill(
                  child: Image.asset(
                    bgAsset,
                    fit: BoxFit.cover,
                  ),
                ),

                // Nội dung bàn chơi Word Chain
                SafeArea(
                  child: BlocBuilder<WordChainBloc, WordChainState>(
                    builder: (context, state) {
                      return WordChainBody(
                        state: state,
                        myName: myName,
                        myAvatar: myAvatar,
                        onBackPressed: _handleBack,
                        onPlayAudio: _handlePlayAudio,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
