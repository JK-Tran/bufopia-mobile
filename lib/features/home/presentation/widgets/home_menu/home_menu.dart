import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_menu/home_menu_item.dart';
import 'package:bufopia/features/practice/presentation/dialog/study_hub_dialog.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Bố cục Menu chính dạng lưới 2x2 (2 trên, 2 dưới) cho màn hình dọc.
class HomeMenu extends StatelessWidget {
  const HomeMenu({
    super.key,
    this.onQuickBattle,
    this.onChooseTopic,
    this.onReviewWeakWords,
    this.onNewMode,
  });

  final VoidCallback? onQuickBattle;
  final VoidCallback? onChooseTopic;
  final VoidCallback? onReviewWeakWords;
  final VoidCallback? onNewMode;

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>(
      (bloc) => bloc.state.isPaperTheme,
    );
    final l10n = context.l10n;

    final items = [
      // 1. Trắc nghiệm từ vựng (Ô trên trái)
      HomeMenuItemData(
        title: l10n.menuQuizTitle,
        subtitle: l10n.menuQuizSubtitle,
        buttonText: l10n.playNow,
        buttonColor: AppColors.menuChainGreen,
        buttonExtrusionColor: AppColors.menuChainGreenExtrusion,
        titleColor: AppColors.menuChainGreenTitle,
        titleShadowColor: AppColors.menuChainGreenTitleShadow,
        imagePath: isPaper
            ? 'assets/images/background_switch/menu_1.webp'
            : 'assets/images/home/choose_topic.png',
        backgroundImagePath: 'assets/images/quick_battle/banner_menu_1.png',
        onTap: onChooseTopic,
      ),
      // 2. Nối từ (Ô trên phải)
      HomeMenuItemData(
        title: l10n.menuWordChainTitle,
        subtitle: l10n.menuWordChainSubtitle,
        buttonText: l10n.playNow,
        buttonColor: AppColors.menuQuizRed,
        buttonExtrusionColor: AppColors.menuQuizRedExtrusion,
        titleColor: AppColors.menuQuizRedTitle,
        titleShadowColor: AppColors.menuQuizRedTitleShadow,
        imagePath: isPaper
            ? 'assets/images/background_switch/menu_2.webp'
            : 'assets/images/home/quick_battle.png',
        backgroundImagePath: 'assets/images/quick_battle/banner_menu_2.png',
        onTap: onQuickBattle,
      ),

      // 3. Góc luyện tập (Ô dưới trái)
      HomeMenuItemData(
        title: l10n.menuWordGuessTitle,
        subtitle: l10n.menuWordGuessSubtitle,
        buttonText: l10n.practice,
        buttonColor: AppColors.menuReviewPurple,
        buttonExtrusionColor: AppColors.menuReviewPurpleExtrusion,
        titleColor: AppColors.menuReviewPurpleTitle,
        titleShadowColor: AppColors.menuReviewPurpleTitleShadow,
        imagePath: isPaper
            ? 'assets/images/background_switch/menu_3.webp'
            : 'assets/images/home/review_word.png',
        backgroundImagePath: 'assets/images/quick_battle/banner_meu_3.png',
        onTap: onReviewWeakWords,
      ),

      // 4. Góc luyện tập (Ô dưới phải)
      HomeMenuItemData(
        title: l10n.menuStudyHubTitle,
        subtitle: l10n.menuStudyHubSubtitle,
        buttonText: l10n.explore,
        buttonColor: AppColors.green,
        buttonExtrusionColor: AppColors.greenDark,
        titleColor: AppColors.greenDark,
        titleShadowColor: AppColors.greenLight,
        imagePath: isPaper
            ? 'assets/images/background_switch/menu_4.png'
            : 'assets/images/home/practice.png',
        backgroundImagePath: 'assets/images/quick_battle/banner_menu_1.png',
        onTap: onNewMode ?? () => StudyHubDialog.show(context),
      ),
    ];

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 4.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.w,
          mainAxisSpacing: 16.h,
          childAspectRatio: 0.90,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return RepaintBoundary(
            child: HomeMenuItem(
              data: item,
              isPaperTheme: isPaper,
              onTap: () {
                context.read<AppBloc>().add(
                  const AppEvent.clickSoundPlayed(),
                );
                item.onTap?.call();
              },
            ),
          );
        },
      ),
    );
  }
}
