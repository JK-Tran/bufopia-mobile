import 'package:bufopia/components/app_icon_button.dart';
import 'package:bufopia/components/app_toast.dart';
import 'package:bufopia/core/base/base_page_state.dart';
import 'package:bufopia/core/constants/app_text.dart';
import 'package:bufopia/core/router/app_router.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/dialog/home_settings_dialog.dart';
import 'package:bufopia/features/practice/domain/entities/contribution.dart';
import 'package:bufopia/features/practice/presentation/contribution/bloc/contribution_bloc.dart';
import 'package:bufopia/features/practice/presentation/contribution/widgets/contribution_form.dart';
import 'package:bufopia/features/practice/presentation/contribution/widgets/contribution_header.dart';
import 'package:bufopia/features/practice/presentation/contribution/widgets/contribution_history_list.dart';
import 'package:bufopia/shared/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class ContributionPage extends StatefulWidget {
  const ContributionPage({super.key});

  @override
  State<ContributionPage> createState() => _ContributionPageState();
}

class _ContributionPageState
    extends BasePageState<ContributionPage, ContributionBloc> {
  @override
  bool get useSafeArea => false;

  @override
  EdgeInsetsGeometry? get pagePadding => EdgeInsets.zero;

  int _activeTabIndex = 0; // 0: Form, 1: History (for mobile portrait)
  Contribution? _editingContribution;

  @override
  void initState() {
    super.initState();
    bloc.add(const ContributionEvent.loadContributions());
  }

  void _loadContributions() {
    bloc.add(const ContributionEvent.loadContributions());
  }

  void _onWordBlur(String word) {
    bloc.add(ContributionEvent.lookupWord(word: word));
  }

  void _onFormSubmit({
    required String wordEn,
    required String meaningVi,
    required String topicId,
    required String partOfSpeech,
    required String phonetic,
    required String exampleEn,
    required String exampleVi,
    String? editingId,
  }) {
    final uid = bloc.state.uid;
    final displayName = bloc.state.displayName;
    final token = bloc.state.token;

    if (editingId != null) {
      bloc.add(
        ContributionEvent.updateContribution(
          id: editingId,
          uid: uid,
          contributorName: displayName,
          wordEn: wordEn,
          meaningVi: meaningVi,
          topicId: topicId,
          partOfSpeech: partOfSpeech,
          phonetic: phonetic,
          exampleEn: exampleEn,
          exampleVi: exampleVi,
          token: token,
        ),
      );
      setState(() => _editingContribution = null);
    } else {
      bloc.add(
        ContributionEvent.submitContribution(
          uid: uid,
          contributorName: displayName,
          wordEn: wordEn,
          meaningVi: meaningVi,
          topicId: topicId,
          partOfSpeech: partOfSpeech,
          phonetic: phonetic,
          exampleEn: exampleEn,
          exampleVi: exampleVi,
          token: token,
        ),
      );
    }
  }

  void _onEditContribution(Contribution item) {
    setState(() {
      _editingContribution = item;
      _activeTabIndex = 0; // Chuyển về form
    });
  }

  void _onTabChanged(int index) {
    context.read<AppBloc>().add(const AppEvent.clickSoundPlayed());
    setState(() => _activeTabIndex = index);
  }

  @override
  Widget buildPage(BuildContext context) {
    final isPaper = context.select<AppBloc, bool>((b) => b.state.isPaperTheme);

    return BlocListener<ContributionBloc, ContributionState>(
      listenWhen: (prev, curr) =>
          prev.successMessage != curr.successMessage &&
          curr.successMessage != null,
      listener: (context, state) {
        if (state.successMessage != null) {
          AppToast.showSuccess(context, state.successMessage!);
        }
      },
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Background
            Image.asset(
              isPaper
                  ? 'assets/images/background_switch/app_background_1.webp'
                  : 'assets/images/app_background.webp',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
              errorBuilder: (_, _, _) => ColoredBox(
                color: isPaper
                    ? AppColors.paperBackground
                    : AppColors.greenLight,
              ),
            ),

            SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(12.w, 6.h, 12.w, 16.h),
                child: Column(
                  children: [
                    // 1. Top Bar
                    Row(
                      children: [
                        AppIconButton(
                          icon: Icons.arrow_back_ios_new_rounded,
                          tooltip: context.l10n.back,
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
                            if (context.canPop()) {
                              context.pop();
                            } else {
                              context.go(AppRouter.home);
                            }
                          },
                        ),

                        Expanded(
                          child: Center(
                            child: ContributionHeader(isPaperTheme: isPaper),
                          ),
                        ),

                        AppIconButton(
                          icon: Icons.settings_rounded,
                          tooltip: context.l10n.settings,
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

                    SizedBox(height: 10.h),

                    // 2. Main Content Card
                    Expanded(
                      child: BlocBuilder<ContributionBloc, ContributionState>(
                        builder: (context, state) {
                          return LayoutBuilder(
                            builder: (context, constraints) {
                              final isWideScreen = constraints.maxWidth >= 600;
                              final historyCount = state.contributions.length;

                              if (isWideScreen) {
                                // 2 Columns side-by-side matching Image 2
                                return Row(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    // Left Form Box
                                    Expanded(
                                      flex: 11,
                                      child: _buildOuterCard(
                                        isPaper: isPaper,
                                        child: ContributionForm(
                                          isPaperTheme: isPaper,
                                          isSubmitting: state.isSubmitting,
                                          initialContribution:
                                              _editingContribution,
                                          autofilledDetail:
                                              state.lookedUpDetail,
                                          onWordBlur: _onWordBlur,
                                          onSubmit: _onFormSubmit,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 12.w),
                                    // Right History Box
                                    Expanded(
                                      flex: 9,
                                      child: _buildOuterCard(
                                        isPaper: isPaper,
                                        child: ContributionHistoryList(
                                          contributions: state.contributions,
                                          isPaperTheme: isPaper,
                                          isLoading: state.isLoading,
                                          onRefresh: _loadContributions,
                                          onEditContribution:
                                              _onEditContribution,
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              }

                              return _buildOuterCard(
                                isPaper: isPaper,
                                child: Column(
                                  children: [
                                    // Segmented Tab bar
                                    Padding(
                                      padding: EdgeInsets.fromLTRB(
                                        12.w,
                                        10.h,
                                        12.w,
                                        6.h,
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: _ContributionTabButton(
                                              label:
                                                  context.l10n.newContribution,
                                              isSelected: _activeTabIndex == 0,
                                              isPaper: isPaper,
                                              icon: Icons
                                                  .add_circle_outline_rounded,
                                              onTap: () => _onTabChanged(0),
                                            ),
                                          ),
                                          SizedBox(width: 8.w),
                                          Expanded(
                                            child: _ContributionTabButton(
                                              label: context
                                                  .l10n
                                                  .contributionHistory,
                                              badgeText: '$historyCount',
                                              isSelected: _activeTabIndex == 1,
                                              isPaper: isPaper,
                                              icon: Icons.history_rounded,
                                              onTap: () => _onTabChanged(1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    Expanded(
                                      child: _activeTabIndex == 0
                                          ? ContributionForm(
                                              isPaperTheme: isPaper,
                                              isSubmitting: state.isSubmitting,
                                              initialContribution:
                                                  _editingContribution,
                                              autofilledDetail:
                                                  state.lookedUpDetail,
                                              onWordBlur: _onWordBlur,
                                              onSubmit: _onFormSubmit,
                                            )
                                          : ContributionHistoryList(
                                              contributions:
                                                  state.contributions,
                                              isPaperTheme: isPaper,
                                              isLoading: state.isLoading,
                                              onRefresh: _loadContributions,
                                              onEditContribution:
                                                  _onEditContribution,
                                            ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOuterCard({
    required Widget child,
    required bool isPaper,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: isPaper ? AppColors.paperCardBg : AppColors.white,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: isPaper ? AppColors.paperBorder : AppColors.grayLight,
          width: 2.w,
        ),
        boxShadow: [
          BoxShadow(
            color: isPaper ? AppColors.paperExtrusion : AppColors.grayExtrusion,
            offset: Offset(0, 4.h),
          ),
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            offset: Offset(0, 8.h),
            blurRadius: 14.r,
          ),
        ],
      ),
      child: child,
    );
  }
}

class _ContributionTabButton extends StatefulWidget {
  const _ContributionTabButton({
    required this.isSelected,
    required this.isPaper,
    required this.icon,
    required this.label,
    required this.onTap,
    this.badgeText,
  });

  final bool isSelected;
  final bool isPaper;
  final IconData icon;
  final String label;
  final String? badgeText;
  final VoidCallback onTap;

  @override
  State<_ContributionTabButton> createState() => _ContributionTabButtonState();
}

class _ContributionTabButtonState extends State<_ContributionTabButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final isSelected = widget.isSelected;
    final isPaper = widget.isPaper;

    final bgColor = isSelected
        ? (isPaper ? AppColors.feedbackMossGreen : AppColors.blueDark)
        : (isPaper ? AppColors.feedbackWarmBeige : AppColors.white);

    final borderColor = isSelected
        ? (isPaper ? AppColors.feedbackMossGreenDark : AppColors.blueDeep)
        : (isPaper ? AppColors.feedbackSandBorder : AppColors.grayLight);

    final shadowColor = isSelected
        ? (isPaper ? AppColors.feedbackMossGreenDark : AppColors.blueDeep)
              .withValues(alpha: 0.35)
        : (isPaper ? AppColors.feedbackSandBorder : AppColors.grayLight)
              .withValues(alpha: 0.35);

    final fgColor = isSelected
        ? AppColors.white
        : (isPaper ? AppColors.paperBadgeText : AppColors.grayMedium);

    final badgeBgColor = isSelected
        ? (isPaper ? AppColors.paperGreenDark : AppColors.blueDeep)
        : (isPaper ? AppColors.paperBadgeBg : AppColors.grayLight);

    final badgeTextColor = isSelected
        ? AppColors.white
        : (isPaper ? AppColors.paperBadgeText : AppColors.grayDark);

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        height: 34.h,
        transform: Matrix4.translationValues(0, _isPressed ? 1 : 0, 0),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: borderColor, width: 1.w),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: const Offset(0, 1.5),
              blurRadius: 1.r,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              size: 15.r,
              color: fgColor,
            ),
            SizedBox(width: 5.w),
            Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: AppText.b2(
                  widget.label,
                  color: fgColor,
                  fontWeight: isSelected ? FontWeight.w700 : FontWeight.w600,
                  fontSize: 12.sp,
                  maxLines: 1,
                ),
              ),
            ),
            if (widget.badgeText != null) ...[
              SizedBox(width: 5.w),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w,
                  vertical: 1.5.h,
                ),
                decoration: BoxDecoration(
                  color: badgeBgColor,
                  borderRadius: BorderRadius.circular(6.r),
                ),
                child: AppText.c1(
                  widget.badgeText!,
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w700,
                  color: badgeTextColor,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
