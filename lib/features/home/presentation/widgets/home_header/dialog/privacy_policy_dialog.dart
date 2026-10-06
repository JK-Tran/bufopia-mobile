import 'dart:math';

import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:bufopia/features/home/data/models/legal_policies_data.dart';
import 'package:bufopia/features/home/presentation/widgets/home_header/privacy/privacy_header.dart';
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
      barrierColor: AppColors.black.withValues(alpha: 0.55),
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
        final currentTab = LegalPoliciesData.tabs[_tabIndex];

        final dialogBg = isClassic
            ? AppColors.white
            : AppColors.paperSurfaceWarm;
        final dialogBorder = isClassic
            ? AppColors.classicBorder
            : AppColors.paperBorderDark;

        return Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          insetPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
          child: Center(
            child: Container(
              width: min(500.w, 0.88.sw),
              constraints: BoxConstraints(maxHeight: 0.95.sh),
              decoration: BoxDecoration(
                color: dialogBg,
                borderRadius: BorderRadius.circular(18.r),
                border: Border.all(color: dialogBorder, width: 1.5.w),
                boxShadow: [
                  BoxShadow(
                    color: isClassic
                        ? AppColors.classicShadowIndigo.withValues(alpha: 0.18)
                        : AppColors.black.withValues(alpha: 0.25),
                    blurRadius: 20.r,
                    offset: Offset(0, 6.h),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.r),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(14.w, 10.h, 14.w, 10.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // 1. Header
                      PrivacyHeader(
                        tag: currentTab.tag,
                        isClassic: isClassic,
                        onClose: () => Navigator.of(context).pop(),
                      ),
                      SizedBox(height: 8.h),

                      // 2. Tab bar
                      PrivacyTabBar(
                        selectedIndex: _tabIndex,
                        onTabSelected: _onTab,
                        isClassic: isClassic,
                      ),
                      SizedBox(height: 6.h),

                      // 3. Scrollable content
                      Expanded(
                        child: Scrollbar(
                          controller: _scroll,
                          thumbVisibility: true,
                          radius: Radius.circular(4.r),
                          child: SingleChildScrollView(
                            controller: _scroll,
                            physics: const BouncingScrollPhysics(),
                            padding: EdgeInsets.only(right: 6.w),
                            child: PrivacyTabView(
                              tab: currentTab,
                              isClassic: isClassic,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 6.h),

                      // // 4. Footer
                      // PrivacyFooter(
                      //   isClassic: isClassic,
                      //   onConfirm: () => Navigator.of(context).pop(),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
