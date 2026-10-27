import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_feedback_dialog.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class StudyHubDialog extends StatelessWidget {
  const StudyHubDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (_) => const StudyHubDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);
    final l10n = context.l10n;

    final items = [
      _HubItemData(
        title: l10n.reviewWeakWords,
        subtitle: l10n.reviewWeakWordsSubtitle,
        icon: Icons.eco_rounded,
        gradient: isPaper
            ? const [AppColors.paperGreen, AppColors.paperGreenDark]
            : const [AppColors.greenLight, AppColors.greenDark],
        badgeText: 'SRS',
        badgeBg: isPaper ? AppColors.paperBadgeBg : AppColors.topicEasyBg,
        badgeBorder: isPaper
            ? AppColors.paperBadgeBorder
            : AppColors.greenLight,
        badgeTextColor: isPaper ? AppColors.paperExpGreen : AppColors.greenDark,
        onTap: () {
          Navigator.of(context).pop();
          context.push(AppRouter.practiceReview);
        },
      ),
      _HubItemData(
        title: l10n.contributeVocab,
        subtitle: l10n.contributeVocabSubtitle,
        icon: Icons.auto_awesome_rounded,
        gradient: isPaper
            ? const [AppColors.woodDark, AppColors.woodBoardBorder]
            : const [AppColors.orangeLight, AppColors.orangeDark],
        badgeText: l10n.badgeNew,
        badgeBg: isPaper
            ? AppColors.paperAmberBadgeBg
            : AppColors.topicMediumBg,
        badgeBorder: isPaper
            ? AppColors.paperAmberBadgeBorder
            : AppColors.orangeLight,
        badgeTextColor: isPaper
            ? AppColors.paperAmberBadgeText
            : AppColors.orangeDark,
        onTap: () {
          Navigator.of(context).pop();
          context.push(AppRouter.practiceContribution);
        },
      ),
      _HubItemData(
        title: l10n.feedbackReport,
        subtitle: l10n.feedbackReportSubtitle,
        icon: Icons.chat_bubble_rounded,
        gradient: isPaper
            ? const [
                AppColors.feedbackMossGreen,
                AppColors.feedbackMossGreenDark,
              ]
            : const [AppColors.blueLight, AppColors.blueDark],
        badgeText: l10n.badgeFeedback,
        badgeBg: isPaper ? AppColors.feedbackWarmBeige : AppColors.skySurface,
        badgeBorder: isPaper
            ? AppColors.feedbackSandBorder
            : AppColors.skyBorder,
        badgeTextColor: isPaper
            ? AppColors.feedbackMossGreen
            : AppColors.skyDark,
        onTap: () {
          Navigator.of(context).pop();
          HomeFeedbackDialog.show(context);
        },
      ),
    ];

    return AppGameDialog(
      title: l10n.studyHubTitle,
      icon: Icons.school_rounded,
      maxWidth: 340.w,
      footerText: l10n.studyHubFooter,
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
      backgroundColor: isPaper ? AppColors.paperCardBg : AppColors.white,
      borderColor: isPaper ? AppColors.paperBorder : AppColors.blueLight,
      headerGradientColors: isPaper
          ? const [AppColors.paperGreen, AppColors.paperGreenDark]
          : const [AppColors.blueLight, AppColors.blueDark],
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
      footerBackgroundColor: isPaper ? AppColors.paperSurface : null,
      footerBorderColor: isPaper ? AppColors.paperBorder : null,
      footerTextColor: isPaper ? AppColors.paperTextMedium : null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < items.length; i++) ...[
            if (i > 0) SizedBox(height: 10.h),
            _HubTile(item: items[i], isPaper: isPaper),
          ],
        ],
      ),
    );
  }
}

class _HubTile extends StatefulWidget {
  const _HubTile({
    required this.item,
    required this.isPaper,
  });

  final _HubItemData item;
  final bool isPaper;

  @override
  State<_HubTile> createState() => _HubTileState();
}

class _HubTileState extends State<_HubTile> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final item = widget.item;
    final isPaper = widget.isPaper;

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: () {
        context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
        item.onTap();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        transform: Matrix4.translationValues(0, _isPressed ? 2.h : 0, 0),
        padding: EdgeInsets.all(12.w),
        decoration: BoxDecoration(
          color: isPaper ? AppColors.paperSurfaceWarm : AppColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: isPaper ? AppColors.paperBorder : AppColors.grayLight,
            width: 1.5.w,
          ),
          boxShadow: [
            BoxShadow(
              color: isPaper
                  ? AppColors.paperExtrusion
                  : AppColors.grayExtrusion,
              offset: Offset(0, _isPressed ? 1.h : 3.h),
            ),
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.05),
              offset: Offset(0, _isPressed ? 2.h : 5.h),
              blurRadius: 6.r,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 44.r,
              height: 44.r,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: item.gradient,
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12.r),
                boxShadow: [
                  BoxShadow(
                    color: item.gradient.last.withValues(alpha: 0.3),
                    offset: Offset(0, 2.h),
                    blurRadius: 4.r,
                  ),
                ],
              ),
              child: Icon(
                item.icon,
                color: AppColors.white,
                size: 22.r,
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: AppText.t3(
                          item.title,
                          color: isPaper
                              ? AppColors.paperTextDark
                              : AppColors.grayDark,
                          fontWeight: FontWeight.w700,
                          fontSize: 14.sp,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (item.badgeText != null) ...[
                        SizedBox(width: 6.w),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.w,
                            vertical: 1.5.h,
                          ),
                          decoration: BoxDecoration(
                            color: item.badgeBg,
                            borderRadius: BorderRadius.circular(6.r),
                            border: Border.all(
                              color: item.badgeBorder,
                              width: 1.w,
                            ),
                          ),
                          child: AppText.c1(
                            item.badgeText!,
                            color: item.badgeTextColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ],
                  ),
                  SizedBox(height: 2.h),
                  AppText.c1(
                    fontSize: 12.sp,
                    item.subtitle,
                    color: isPaper
                        ? AppColors.paperTextMuted
                        : AppColors.grayMedium,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            SizedBox(width: 6.w),
            Icon(
              Icons.chevron_right_rounded,
              color: isPaper ? AppColors.paperTextMuted : AppColors.grayMedium,
              size: 22.r,
            ),
          ],
        ),
      ),
    );
  }
}

class _HubItemData {
  const _HubItemData({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.gradient,
    required this.badgeBg,
    required this.badgeBorder,
    required this.badgeTextColor,
    required this.onTap,
    this.badgeText,
  });

  final String title;
  final String subtitle;
  final IconData icon;
  final List<Color> gradient;
  final Color badgeBg;
  final Color badgeBorder;
  final Color badgeTextColor;
  final VoidCallback onTap;
  final String? badgeText;
}
