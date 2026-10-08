import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_menu/home_menu_item.dart';
import 'package:bufopia/shared/utils/view_utils.dart';
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

    final items = [
      // 1. Trắc nghiệm từ vựng (Ô trên trái)
      HomeMenuItemData(
        title: 'Trắc nghiệm',
        subtitle: 'Chọn chủ đề hoặc đấu ngẫu nhiên',
        buttonText: 'CHỌN ĐỀ',
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
        title: 'Nối từ',
        subtitle: 'Nối từ tự do, học phát âm và ngữ cảnh',
        buttonText: 'CHƠI NGAY',
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
        title: 'Luyện tập',
        subtitle: 'Ôn từ yếu và rèn phản xạ ngôn ngữ',
        buttonText: 'LUYỆN TẬP',
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

      // 4. Sắp ra mắt (Ô dưới phải)
      HomeMenuItemData(
        title: 'Chế độ mới',
        subtitle: 'Tính năng mới đang được hoàn thiện',
        buttonText: 'SẮP RA MẮT',
        buttonColor: AppColors.grayMedium,
        buttonExtrusionColor: AppColors.grayDark,
        titleColor: AppColors.grayDark,
        titleShadowColor: AppColors.grayLight,
        imagePath: isPaper
            ? 'assets/images/background_switch/menu_3.webp'
            : 'assets/images/home/review_word.png',
        backgroundImagePath: 'assets/images/quick_battle/banner_menu_1.png',
        isLocked: true,
        onTap:
            onNewMode ??
            () => ViewUtils.showAppSnackBar(
              context,
              'Tính năng đang được phát triển, hãy đón chờ nhé!',
            ),
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
