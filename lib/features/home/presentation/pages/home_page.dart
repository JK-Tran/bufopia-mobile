import 'dart:async';

import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/auth/presentation/widgets/dialog/guest_mascot_picker_dialog.dart';
import 'package:bufopia/features/home/presentation/bloc/home_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_body.dart';
import 'package:bufopia/features/leaderboard/presentation/bloc/leaderboard_bloc.dart';
import 'package:bufopia/features/word_chain/word_chain.dart';
import 'package:bufopia/shared/services/audio/sound_manager.dart';
import 'package:bufopia/shared/utils/validation_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeBloc> {
  @override
  bool get useSafeArea => false;

  @override
  EdgeInsetsGeometry? get pagePadding => EdgeInsets.zero;

  bool _isMascotDialogShowing = false;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    bloc.add(const HomeEvent.initiated());
    context.read<AuthBloc>().add(const AuthEvent.getUserInfo());

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      SoundManager.onEnterHome();
      final user = context.read<AuthBloc>().state.currentUser;
      if (user != null &&
          user.uid.isNotEmpty &&
          (!user.persisted ||
              !user.nameConfigured ||
              !ValidationUtils.isValidPlayerName(user.displayName))) {
        _checkAndShowMascotPicker(user.uid);
      }
    });
  }

  @override
  void dispose() {
    SoundManager.onLeaveHome();
    super.dispose();
  }

  void _checkAndShowMascotPicker(String uid) {
    if (_isMascotDialogShowing || !mounted) return;
    _isMascotDialogShowing = true;
    GuestMascotPickerDialog.show(context, uid: uid).then((_) {
      _isMascotDialogShowing = false;
    });
  }

  void _onNavigateToChooseTopic() {
    context.push(AppRouter.topic);
  }

  Future<void> _onReviewWeakWordsPressed() async {
    context.push(AppRouter.wordGuessTopic);
  }

  Future<void> _onWordChainPressed() async {
    await WordChainModeDialog.show(
      context,
      onBotTimed: () {
        context.push(AppRouter.wordChain);
      },
      onBotRelax: () {
        context.push(
          AppRouter.wordChain,
          extra: {'relaxed': true},
        );
      },
      onOnlineTimed: () {
        WordChainMatchmakingDialog.show(
          context,
          onMatched: (roomCode, rivalName, rivalAvatar) {
            AppToast.showSuccess(
              context,
              'Đã tìm thấy đối thủ $rivalName! Vào trận...',
            );
            context.push(
              AppRouter.wordChain,
              extra: {
                'mode': WordChainGameMode.room,
                'roomCode': roomCode,
              },
            );
          },
        );
      },
      onOnlineRelax: () {
        WordChainMatchmakingDialog.show(
          context,
          relaxed: true,
          onMatched: (roomCode, rivalName, rivalAvatar) {
            AppToast.showSuccess(
              context,
              'Đã tìm thấy đối thủ $rivalName! Vào trận...',
            );
            context.push(
              AppRouter.wordChain,
              extra: {
                'mode': WordChainGameMode.room,
                'roomCode': roomCode,
                'relaxed': true,
              },
            );
          },
        );
      },
      onInviteTimed: () {
        WordChainRoomDialog.show(
          context,
          onEnterRoom: (roomCode) {
            AppToast.showSuccess(
              context,
              'Đã vào phòng thi đấu #$roomCode!',
            );
            context.push(
              AppRouter.wordChain,
              extra: {
                'mode': WordChainGameMode.room,
                'roomCode': roomCode,
              },
            );
          },
        );
      },
      onInviteRelax: () {
        WordChainRoomDialog.show(
          context,
          relaxed: true,
          onEnterRoom: (roomCode) {
            AppToast.showSuccess(
              context,
              'Đã vào phòng thi đấu #$roomCode!',
            );
            context.push(
              AppRouter.wordChain,
              extra: {
                'mode': WordChainGameMode.room,
                'roomCode': roomCode,
                'relaxed': true,
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocProvider<LeaderboardBloc>(
      create: (_) => GetIt.instance.get<LeaderboardBloc>(),
      child: BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) {
          final currUser = current.currentUser;
          return currUser != null &&
              currUser.uid.isNotEmpty &&
              (!currUser.persisted ||
                  !currUser.nameConfigured ||
                  !ValidationUtils.isValidPlayerName(currUser.displayName));
        },
        listener: (context, state) {
          final user = state.currentUser;
          if (user != null && user.uid.isNotEmpty) {
            _checkAndShowMascotPicker(user.uid);
          }
        },
        child: Scaffold(
          body: HomeBody(
            onQuickBattle: _onWordChainPressed,
            onChooseTopic: _onNavigateToChooseTopic,
            onReviewWeakWords: _onReviewWeakWordsPressed,
          ),
        ),
      ),
    );
  }
}
