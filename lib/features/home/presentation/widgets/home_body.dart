import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_info_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/home_header.dart';
import 'package:bufopia/features/home/presentation/widgets/home_menu/home_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    this.onQuickBattle,
    this.onChooseTopic,
    this.onReviewWeakWords,
    this.onSoundPressed,
    this.onSettingsPressed,
  });

  final VoidCallback? onQuickBattle;
  final VoidCallback? onChooseTopic;
  final VoidCallback? onReviewWeakWords;
  final VoidCallback? onSoundPressed;
  final VoidCallback? onSettingsPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      buildWhen: (previous, current) => previous.appTheme != current.appTheme,
      builder: (context, appState) {
        final isPaper = appState.isPaperTheme;
        final bgAsset = isPaper
            ? 'assets/images/background_switch/app_background_1.webp'
            : 'assets/images/app_background.webp';

        return Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              bgAsset,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),

            // 2. Main Game Screen Layout (Header + Centered 2x2 Menu Grid)
            SafeArea(
              minimum: EdgeInsets.fromLTRB(14.w, 16.h, 14.w, 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Top Header Bar: Capsule + Logo + Sound & Settings
                  Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: BlocBuilder<AuthBloc, AuthState>(
                      buildWhen: (previous, current) =>
                          previous.currentUser != current.currentUser,
                      builder: (context, authState) {
                        final user = authState.currentUser;
                        return HomeHeader(
                          userName: (user?.displayName.isNotEmpty == true)
                              ? user!.displayName
                              : 'Alex',
                          userLevel: user?.level ?? 1,
                          userXp: user?.xp ?? 0,
                          userStreak: user?.streak ?? 0,
                          currentLevelXp: user?.currentLevelXp ?? 0,
                          neededForNext: (user?.neededForNext ?? 0) > 0
                              ? user!.neededForNext
                              : 100,
                          xpProgress:
                              ((user?.progressPercent ?? 0) / 100).clamp(
                            0.0,
                            1.0,
                          ),
                          avatarUrl: user?.avatarUrl,
                          onProfilePressed: () =>
                              PlayerInfoDialog.show(context),
                          onSoundPressed: onSoundPressed,
                          onSettingsPressed: onSettingsPressed,
                        );
                      },
                    ),
                  ),

                  // Center: 2x2 Grid trải đều ở giữa
                  Expanded(
                    child: Center(
                      child: HomeMenu(
                        onQuickBattle: onQuickBattle,
                        onChooseTopic: onChooseTopic,
                        onReviewWeakWords: onReviewWeakWords,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
