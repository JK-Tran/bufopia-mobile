import 'package:bufopia/core/themes/app_colors.dart';
import 'package:bufopia/features/app/bloc/app_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCloseButton extends StatefulWidget {
  const AppCloseButton({
    super.key,
    this.onTap,
    this.size,
  });

  final VoidCallback? onTap;
  final double? size;

  @override
  State<AppCloseButton> createState() => _AppCloseButtonState();
}

class _AppCloseButtonState extends State<AppCloseButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _pressController;
  late final Animation<double> _translateAnimation;

  static const double _extrusionHeight = 3;

  @override
  void initState() {
    super.initState();
    _pressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 60),
    );
    _translateAnimation =
        Tween<double>(
          begin: 0,
          end: _extrusionHeight - 1,
        ).animate(
          CurvedAnimation(parent: _pressController, curve: Curves.easeInOut),
        );
  }

  @override
  void dispose() {
    _pressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final buttonSize = widget.size ?? 34.w;

    return AnimatedBuilder(
      animation: _pressController,
      builder: (context, child) {
        final currentOffset = _translateAnimation.value;
        final currentExtrusion = (_extrusionHeight - currentOffset).clamp(
          0.5,
          _extrusionHeight,
        );

        return Transform.translate(
          offset: Offset(0, currentOffset),
          child: Container(
            width: buttonSize,
            height: buttonSize,
            decoration: BoxDecoration(
              color: AppColors.dialogCloseBg,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.dialogCloseIcon,
                width: 1.5.w,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.dialogCloseIcon,
                  offset: Offset(0, currentExtrusion),
                ),
              ],
            ),
            child: Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  context.read<AppBloc>().add(
                    const AppEvent.clickSoundPlayed(),
                  );
                  if (widget.onTap != null) {
                    widget.onTap!();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                onTapDown: (_) => _pressController.forward(),
                onTapUp: (_) => _pressController.reverse(),
                onTapCancel: () => _pressController.reverse(),
                child: Center(
                  child: Icon(
                    Icons.close_rounded,
                    color: AppColors.dialogCloseIcon,
                    size: buttonSize * 0.53,
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
