import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Badge đếm ngược thời gian phạt (Cooldown) khi người chơi chọn sai
/// Hiển thị trực quan "Wait 1s" / "Wait 2s" nổi trên lưới đáp án
class VocabularyCooldownBagde extends StatefulWidget {
  const VocabularyCooldownBagde({
    required this.seconds,
    super.key,
    this.isPaper = false,
  });

  final int seconds;
  final bool isPaper;

  @override
  State<VocabularyCooldownBagde> createState() =>
      _VocabularyCooldownBagdeState();
}

class _VocabularyCooldownBagdeState extends State<VocabularyCooldownBagde>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    )..forward();
    _scaleAnimation = Tween<double>(begin: 0.85, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
  }

  @override
  void didUpdateWidget(covariant VocabularyCooldownBagde oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.seconds != widget.seconds) {
      _controller.forward(from: 0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.seconds <= 0) return const SizedBox.shrink();

    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final fontSize = isLandscape ? 12.0 : 12.sp;
    final horizontalPad = isLandscape ? 10.0 : 12.w;
    final verticalPad = isLandscape ? 3.0 : 4.h;

    return ScaleTransition(
      scale: _scaleAnimation,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: horizontalPad,
          vertical: verticalPad,
        ),
        decoration: BoxDecoration(
          color: const Color(0xFFFFF9ED),
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(
            color: const Color(0xFFB86B35),
            width: 1.5,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black.withValues(alpha: 0.14),
              offset: const Offset(0, 2),
              blurRadius: 3,
            ),
          ],
        ),
        child: Text(
          'Wait ${widget.seconds}s',
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w800,
            color: const Color(0xFF9E3A1A),
            height: 1.1,
            letterSpacing: 0.2,
          ),
        ),
      ),
    );
  }
}
