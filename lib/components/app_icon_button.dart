import 'package:bufopia/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatefulWidget {
  const AppIconButton({
    required this.icon,
    super.key,
    this.onPressed,
    this.tooltip,
    this.backgroundColor = AppColors.white,
    this.iconColor = AppColors.paperHeaderIcon,
    this.iconSize = 22,
    this.size = 46,
    this.borderColor = AppColors.white,
    this.borderWidth = 2.0,
    this.extrusionColor = AppColors.grayExtrusion,
    this.extrusionHeight = 4.0,
  });

  final IconData icon;
  final VoidCallback? onPressed;
  final String? tooltip;
  final Color backgroundColor;
  final Color iconColor;
  final double iconSize;
  final double size;
  final Color borderColor;
  final double borderWidth;
  final Color extrusionColor;
  final double extrusionHeight;

  @override
  State<AppIconButton> createState() => _AppIconButtonState();
}

class _AppIconButtonState extends State<AppIconButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<double> _translateAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 70),
    );
    _translateAnimation =
        Tween<double>(
          begin: 0,
          end: (widget.extrusionHeight > 1 ? widget.extrusionHeight - 1 : 1),
        ).animate(
          CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
        );
  }

  @override
  void didUpdateWidget(AppIconButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.extrusionHeight != widget.extrusionHeight) {
      _translateAnimation =
          Tween<double>(
            begin: 0,
            end: (widget.extrusionHeight > 1 ? widget.extrusionHeight - 1 : 1),
          ).animate(
            CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
          );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails _) {
    if (widget.onPressed != null) _controller.forward();
  }

  void _onTapUp(TapUpDetails _) {
    if (widget.onPressed != null) _controller.reverse();
  }

  void _onTapCancel() {
    if (widget.onPressed != null) _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final currentOffset = _translateAnimation.value;
        final currentExtrusion = (widget.extrusionHeight - currentOffset).clamp(
          0.5,
          widget.extrusionHeight,
        );

        final shadows = <BoxShadow>[
          BoxShadow(
            color: widget.extrusionColor,
            offset: Offset(0, currentExtrusion),
          ),
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.12),
            offset: Offset(0, currentExtrusion + 4),
            blurRadius: 8,
          ),
        ];

        return Transform.translate(
          offset: Offset(0, currentOffset),
          child: Container(
            width: widget.size,
            height: widget.size,
            decoration: BoxDecoration(
              color: widget.backgroundColor,
              shape: BoxShape.circle,
              border: widget.borderWidth > 0
                  ? Border.all(
                      color: widget.borderColor,
                      width: widget.borderWidth,
                    )
                  : null,
              boxShadow: shadows,
            ),
            child: Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: widget.onPressed,
                onTapDown: _onTapDown,
                onTapUp: _onTapUp,
                onTapCancel: _onTapCancel,
                child: Tooltip(
                  message: widget.tooltip ?? '',
                  child: Center(
                    child: Icon(
                      widget.icon,
                      color: widget.iconColor,
                      size: widget.iconSize,
                    ),
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
