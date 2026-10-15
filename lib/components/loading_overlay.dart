import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.black.withValues(alpha: 0.3),
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }
}
