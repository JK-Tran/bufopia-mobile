import 'package:bufopia/components/app_button.dart';
import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/components/app_snack_bar.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/challenge/presentation/widgets/dialog/challenge_room_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_settings_dialog.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/dialog/vocabulary_matchmaking_dialog.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_grid.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_header.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_mode_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class TopicPage extends StatefulWidget {
  const TopicPage({super.key});

  @override
  State<TopicPage> createState() => _TopicPageState();
}

class _TopicPageState extends State<TopicPage> {
  String _selectedTopicId = 'auto';

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  void _onTopicTapped(Topic topic) {
    setState(() {
      _selectedTopicId = topic.id;
    });

    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());

    // Sau khi chọn chủ đề -> Mở popup 4 chế độ chơi (Bot, PvP, Online, ID)
    TopicModeDialog.show(
      context,
      onBotBattle: () => _startBattle(isBot: true, topic: topic.id),
      onPvPBattle: () => _startBattle(isBot: false, topic: topic.id),
      onOnlineMatch: () => _startOnlineMatch(topic: topic.id),
      onIdChallenge: () => _startIdChallenge(topic: topic.id),
    );
  }

  void _startBattle({
    required bool isBot,
    required String topic,
  }) {
    context.push(
      AppRouter.vocabulary,
      extra: {
        'isBot': isBot,
        'topic': topic,
      },
    );
  }

  void _startOnlineMatch({required String topic}) {
    VocabularyMatchmakingDialog.show(
      context,
      topic: topic,
      onMatched: (roomCode, rivalName, rivalAvatar) {
        AppSnackBar.showSuccess(
          context,
          'Đã tìm thấy đối thủ $rivalName! Vào trận...',
        );
        context.push(
          AppRouter.vocabulary,
          extra: {
            'isBot': false,
            'topic': topic,
            'roomCode': roomCode,
            'rivalName': rivalName,
            'rivalAvatar': rivalAvatar,
          },
        );
      },
    );
  }

  void _startIdChallenge({required String topic}) {
    ChallengeRoomDialog.show(
      context,
      onEnterRoom: (code) {
        AppSnackBar.showSuccess(
          context,
          'Đã vào phòng thi đấu #$code!',
        );
        context.push(
          AppRouter.vocabulary,
          extra: {
            'isBot': false,
            'topic': topic,
            'roomCode': code,
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            isPaper
                ? 'assets/images/background_switch/app_background_1.webp'
                : 'assets/images/app_background.webp',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            errorBuilder: (context, error, stackTrace) => ColoredBox(
              color: isPaper ? AppColors.paperBackground : AppColors.greenLight,
            ),
          ),

          SafeArea(
            minimum: EdgeInsets.symmetric(horizontal: 14.w, vertical: 6.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 104.w,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: AppButton(
                          text: 'Quay lại',
                          icon: Icon(
                            Icons.arrow_back_ios_new_rounded,
                            size: 12.r,
                            color: isPaper
                                ? AppColors.paperTextDark
                                : AppColors.grayDark,
                          ),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          backgroundColor: isPaper
                              ? AppColors.paperCardBg
                              : AppColors.white,
                          textColor: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                          borderColor: isPaper
                              ? AppColors.paperBorder
                              : AppColors.grayLight,
                          extrusionColor: isPaper
                              ? AppColors.paperExtrusion
                              : AppColors.grayExtrusion,
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.w,
                            vertical: 6.h,
                          ),
                          borderRadius: BorderRadius.circular(16.r),
                          extrusionHeight: 2.5,
                          onPressed: () {
                            context.read<AppBloc>().add(
                              const AppEvent.clickSoundPlayed(),
                            );
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    ),

                    TopicHeader(isPaperTheme: isPaper),

                    SizedBox(
                      width: 104.w,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: AppIconButton(
                          icon: Icons.settings_rounded,
                          tooltip: 'Cài đặt',
                          size: 34.r,
                          iconSize: 18.r,
                          backgroundColor: isPaper
                              ? AppColors.paperCardBg
                              : AppColors.white,
                          iconColor: isPaper
                              ? AppColors.paperHeaderIcon
                              : AppColors.sky,
                          borderColor: isPaper
                              ? AppColors.paperBorder
                              : AppColors.grayLight,
                          extrusionColor: isPaper
                              ? AppColors.paperExtrusion
                              : AppColors.grayExtrusion,
                          extrusionHeight: 2.5,
                          onPressed: () => HomeSettingsDialog.show(context),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                //Thẻ bài bằng GridView (TopicGrid)
                Expanded(
                  child: TopicGrid(
                    selectedTopicId: _selectedTopicId,
                    isPaperTheme: isPaper,
                    onTopicSelected: _onTopicTapped,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
