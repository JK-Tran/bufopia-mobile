import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_menu/home_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({
    super.key,
    this.onQuickBattle,
    this.onChooseTopic,
    this.onReviewWeakWords,
  });

  final VoidCallback? onQuickBattle;
  final VoidCallback? onChooseTopic;
  final VoidCallback? onReviewWeakWords;

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  static const int _initialIndex = 1; // Quick Battle (Index 1) ở chính giữa

  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    // viewportFraction 1/3 chia đều 3 vị trí trên màn hình landscape
    _pageController = PageController(
      initialPage: _initialIndex,
      viewportFraction: 1 / 3,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _animateToPage(int page) {
    if (!_pageController.hasClients) return;
    _pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>(
      (bloc) => bloc.state.isPaperTheme,
    );

    final items = [
      // 0. Nối từ (Chính giữa)
      HomeMenuItemData(
        title: 'Nối từ',
        subtitle:
            'Nối từ tự do, nghe phát âm và học cách dùng từ trong ngữ cảnh!',
        buttonText: 'CHƠI NỐI TỪ',
        buttonColor: AppColors.menuQuizRed,
        buttonExtrusionColor: AppColors.menuQuizRedExtrusion,
        titleColor: AppColors.menuQuizRedTitle,
        titleShadowColor: AppColors.menuQuizRedTitleShadow,
        imagePath: isPaper
            ? 'assets/images/background_switch/menu_2.webp'
            : 'assets/images/home/quick_battle.png',
        backgroundImagePath: 'assets/images/quick_battle/banner_menu_2.png',
        onTap: widget.onQuickBattle,
      ),
      // 1. Trắc nghiệm từ vựng (Cánh trái)
      HomeMenuItemData(
        title: 'Trắc nghiệm từ vựng',
        subtitle: 'Chọn chủ đề hoặc đấu ngẫu nhiên, sau đó chọn chế độ chơi!',
        buttonText: 'CHỌN NỘI DUNG',
        buttonColor: AppColors.menuChainGreen,
        buttonExtrusionColor: AppColors.menuChainGreenExtrusion,
        titleColor: AppColors.menuChainGreenTitle,
        titleShadowColor: AppColors.menuChainGreenTitleShadow,
        imagePath: isPaper
            ? 'assets/images/background_switch/menu_1.webp'
            : 'assets/images/home/choose_topic.png',
        backgroundImagePath: 'assets/images/quick_battle/banner_menu_1.png',
        onTap: widget.onChooseTopic,
      ),

      // 2. Góc luyện tập (Cánh phải)
      HomeMenuItemData(
        title: 'Góc luyện tập',
        subtitle:
            'Ôn từ yếu và tập trung các hoạt động học tập bổ trợ tại một nơi.',
        buttonText: 'VÀO LUYỆN TẬP',
        buttonColor: AppColors.menuReviewPurple,
        buttonExtrusionColor: AppColors.menuReviewPurpleExtrusion,
        titleColor: AppColors.menuReviewPurpleTitle,
        titleShadowColor: AppColors.menuReviewPurpleTitleShadow,
        imagePath: isPaper
            ? 'assets/images/background_switch/menu_3.webp'
            : 'assets/images/home/review_word.png',
        backgroundImagePath: 'assets/images/quick_battle/banner_meu_3.png',
        onTap: widget.onReviewWeakWords,
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final availableHeight = constraints.maxHeight;
        final availableWidth = constraints.maxWidth;

        // clamp cao hơn cho iPad (tối đa 280 thay vì 220)
        // Giới hạn thêm theo chiều ngang: mỗi thẻ chiếm 1/3 viewportFraction
        final itemHeight = (availableHeight * 0.82).clamp(150.0, 280.0);
        // Giới hạn width theo viewport thực tế để tránh overflow ngang
        final maxItemWidth = (availableWidth / 3) * 0.96;
        final itemWidth = (itemHeight * 1.6).clamp(0.0, maxItemWidth);

        return PageView.builder(
          controller: _pageController,
          itemCount: items.length,
          physics: const PageScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          clipBehavior: Clip.none,
          itemBuilder: (context, index) {
            final item = items[index];

            return AnimatedBuilder(
              animation: _pageController,
              builder: (context, child) {
                var page = _initialIndex.toDouble();
                if (_pageController.hasClients &&
                    _pageController.page != null) {
                  page = _pageController.page!;
                }

                // Vị trí tương đối so với tâm (0.0 = đang ở giữa)
                final diff = index - page;
                final clampedDelta = diff.abs().clamp(0.0, 1.0);

                // Thẻ ở giữa: scale 1.0, hai bên: scale 0.88
                final scale = 1.0 - (clampedDelta * 0.12);

                // Góc nghiêng 3D Cover Flow mượt mà
                final rotateY = (diff * 0.14).clamp(-0.18, 0.18);

                final transformMatrix = Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..rotateY(rotateY);

                return Center(
                  child: Transform(
                    alignment: Alignment.center,
                    transform: transformMatrix,
                    child: Transform.scale(
                      scale: scale,
                      child: child,
                    ),
                  ),
                );
              },
              // RepaintBoundary cache layer đồ họa GPU, không vẽ lại khi cuộn
              child: RepaintBoundary(
                child: HomeMenuItem(
                  data: item,
                  width: itemWidth,
                  height: itemHeight,
                  isPaperTheme: isPaper,
                  onTap: () {
                    final currentPage =
                        (_pageController.hasClients &&
                            _pageController.page != null)
                        ? _pageController.page!
                        : _initialIndex.toDouble();
                    final isCenter = (index - currentPage).abs() < 0.4;

                    if (isCenter) {
                      context.read<AppBloc>().add(
                        const AppEvent.clickSoundPlayed(),
                      );
                      item.onTap?.call();
                    } else {
                      _animateToPage(index);
                    }
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
