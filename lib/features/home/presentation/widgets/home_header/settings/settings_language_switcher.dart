import 'package:bufopia/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Switcher chọn ngôn ngữ (VI / EN / 中文) tái sử dụng [AppPillSwitcher]
class SettingsLanguageSwitcher extends StatelessWidget {
  const SettingsLanguageSwitcher({
    required this.currentLanguage,
    required this.onChanged,
    required this.isPaper,
    super.key,
  });

  final String currentLanguage;
  final ValueChanged<String> onChanged;
  final bool isPaper;

  static const _options = [
    AppPillSwitcherItem<String>(value: 'vi', label: 'VI'),
    AppPillSwitcherItem<String>(value: 'en', label: 'EN'),
    AppPillSwitcherItem<String>(value: 'zh', label: '中文'),
  ];

  @override
  Widget build(BuildContext context) {
    return AppPillSwitcher<String>(
      items: _options,
      selectedValue: currentLanguage,
      onChanged: onChanged,
      isPaper: isPaper,
      width: 126.w,
    );
  }
}
