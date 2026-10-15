import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:bufopia/features/challenge/presentation/widgets/dialog/challenge_room_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_settings_dialog.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/player_edit_name_dialog.dart';
import 'package:bufopia/features/vocabulary/domain/entities/topic.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/dialog/vocabulary_matchmaking_dialog.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/dialog/topic_mode_dialog.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_grid.dart';
import 'package:bufopia/features/vocabulary/presentation/widgets/topic/topic_header.dart';
import 'package:bufopia/shared/utils/user_name_generator.dart';
import 'package:bufopia/shared/utils/validation_utils.dart';
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
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
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
    final authBloc = context.read<AuthBloc>();
    final user = authBloc.state.currentUser;

    // Đảm bảo hồ sơ người chơi được lưu trên server trước khi gọi /api/deck
    if (user == null ||
        !user.persisted ||
        !ValidationUtils.isValidPlayerName(user.displayName)) {
      final uid = user?.uid.isNotEmpty == true ? user!.uid : '';
      final mascot = (user?.avatarUrl == UserNameGenerator.pipAvatar)
          ? UserNameGenerator.pip
          : UserNameGenerator.bunny;
      final fallbackName =
          (user?.displayName.isNotEmpty == true &&
              ValidationUtils.isValidPlayerName(user!.displayName))
          ? user.displayName
          : UserNameGenerator.generate(mascot, uid);
      authBloc.add(AuthEvent.updateProfile(displayName: fallbackName));
    }

    context.push(
      AppRouter.vocabulary,
      extra: {
        'isBot': isBot,
        'topic': topic,
      },
    );
  }

  Future<bool> _ensureValidPlayerName() async {
    final authState = context.read<AuthBloc>().state;
    final currentName = authState.currentUser?.displayName.trim();

    if (ValidationUtils.isValidPlayerName(currentName)) {
      return true;
    }

    AppToast.showWarning(
      context,
      'Vui lòng đặt tên hiển thị (2–25 ký tự) trước khi tham gia đấu Online!',
    );

    final newName = await PlayerEditNameDialog.show(
      context,
      initialName: currentName ?? '',
    );

    if (!mounted) return false;

    if (newName != null && ValidationUtils.isValidPlayerName(newName.trim())) {
      context.read<AuthBloc>().add(
        AuthEvent.updateProfile(displayName: newName.trim()),
      );
      return true;
    }

    AppToast.showWarning(
      context,
      'Tên không hợp lệ. Vui lòng đặt từ 2–25 ký'
      ' tự và không dùng tên mặc định.',
    );
    return false;
  }

  Future<void> _startOnlineMatch({required String topic}) async {
    final hasValidName = await _ensureValidPlayerName();
    if (!hasValidName || !mounted) return;

    VocabularyMatchmakingDialog.show(
      context,
      topic: topic,
      onMatched: (roomCode, rivalName, rivalAvatar) {
        AppToast.showSuccess(
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

  Future<void> _startIdChallenge({required String topic}) async {
    final hasValidName = await _ensureValidPlayerName();
    if (!hasValidName || !mounted) return;

    ChallengeRoomDialog.show(
      context,
      onEnterRoom: (code) {
        AppToast.showSuccess(
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
                  children: [
                    AppIconButton(
                      icon: Icons.arrow_back_ios_new_rounded,
                      tooltip: 'Quay lại',
                      size: 36.r,
                      iconSize: 18.r,
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
                      extrusionHeight: 2.5,
                      onPressed: () {
                        context.read<AppBloc>().add(
                          const AppEvent.clickSoundPlayed(),
                        );
                        Navigator.of(context).pop();
                      },
                    ),

                    Expanded(
                      child: Center(
                        child: TopicHeader(isPaperTheme: isPaper),
                      ),
                    ),

                    AppIconButton(
                      icon: Icons.settings_rounded,
                      tooltip: 'Cài đặt',
                      size: 36.r,
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
