import 'package:bufopia/components/app_game_dialog.dart';
import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/data/models/legal_policies_data.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/privacy/privacy_tab_bar.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/privacy/privacy_tab_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Dialog Chính sách & Điều khoản Bufopia (4 tab, phong cách 3D Game)
class PrivacyPolicyDialog extends StatefulWidget {
  const PrivacyPolicyDialog({super.key, this.initialTabKey});

  final String? initialTabKey;

  static Future<void> show(
    BuildContext context, {
    String? initialTabKey,
  }) {
    return showDialog<void>(
      context: context,
      barrierColor: AppColors.black.withValues(alpha: 0.5),
      builder: (_) => PrivacyPolicyDialog(initialTabKey: initialTabKey),
    );
  }

  @override
  State<PrivacyPolicyDialog> createState() => _PrivacyPolicyDialogState();
}

class _PrivacyPolicyDialogState extends State<PrivacyPolicyDialog> {
  late int _tabIndex;
  final _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    final initial = widget.initialTabKey != null
        ? LegalPoliciesData.tabs.indexWhere(
            (t) => t.key == widget.initialTabKey,
          )
        : 0;
    _tabIndex = initial >= 0 ? initial : 0;
  }

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _onTab(int i) {
    if (_tabIndex == i) return;
    setState(() => _tabIndex = i);
    if (_scroll.hasClients) {
      _scroll.animateTo(
        0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOutCubic,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        final isClassic = state.isClassicTheme;
        final isPaper = state.isPaperTheme;
        final currentTab = LegalPoliciesData.tabs[_tabIndex];

        return AppGameDialog(
          title: 'CHÍNH SÁCH & ĐIỀU KHOẢN',
          icon: Icons.verified_user_rounded,
          maxWidth: 340.w,
          maxHeight: 560.h,
          isScrollable: false,
          footerText: '⭐ Bufopia cam kết bảo vệ dữ liệu & quyền riêng tư ⭐',
          padding: EdgeInsets.fromLTRB(10.w, 8.h, 10.w, 6.h),
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
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 1. Tab bar
              PrivacyTabBar(
                selectedIndex: _tabIndex,
                onTabSelected: _onTab,
                isClassic: isClassic,
              ),
              SizedBox(height: 8.h),

              // 2. Scrollable content
              Expanded(
                child: Scrollbar(
                  controller: _scroll,
                  thumbVisibility: true,
                  radius: Radius.circular(4.r),
                  child: SingleChildScrollView(
                    controller: _scroll,
                    physics: const BouncingScrollPhysics(),
                    padding: EdgeInsets.only(right: 4.w),
                    child: PrivacyTabView(
                      tab: currentTab,
                      isClassic: isClassic,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
