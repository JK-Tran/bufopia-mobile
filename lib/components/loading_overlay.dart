import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withValues(alpha: .3),
      alignment: Alignment.center,
      child: const CircularProgressIndicator(),
    );
  }
}
