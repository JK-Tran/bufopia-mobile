import 'package:flutter/material.dart';

class AppCard extends StatefulWidget {
  const AppCard({
    required this.child,
    super.key,
    this.gradient,
    this.backgroundColor,
    this.borderRadius,
    this.borderColor = Colors.white,
    this.borderWidth = 2.5,
    this.extrusionColor,
    this.extrusionHeight = 6.0,
    this.padding = const EdgeInsets.all(16),
    this.margin,
    this.width,
    this.height,
    this.onTap,
  });

  final Widget child;
  final Gradient? gradient;
  final Color? backgroundColor;
  final BorderRadiusGeometry? borderRadius;
  final Color borderColor;
  final double borderWidth;
  final Color? extrusionColor;
  final double extrusionHeight;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;
  final double? width;
  final double? height;
  final VoidCallback? onTap;

  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> with SingleTickerProviderStateMixin {
  late final AnimationController _pressController;
  late Animation<double> _translateAnimation;

  @override
  void initState() {
    super.initState();
    _pressController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 70),
    );
    _translateAnimation =
        Tween<double>(
          begin: 0,
          end: widget.extrusionHeight > 0 ? widget.extrusionHeight : 0,
        ).animate(
          CurvedAnimation(parent: _pressController, curve: Curves.easeInOut),
        );
  }

  @override
  void didUpdateWidget(AppCard oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.extrusionHeight != widget.extrusionHeight) {
      _translateAnimation =
          Tween<double>(
            begin: 0,
            end: widget.extrusionHeight > 0 ? widget.extrusionHeight : 0,
          ).animate(
            CurvedAnimation(parent: _pressController, curve: Curves.easeInOut),
          );
    }
  }

  @override
  void dispose() {
    _pressController.dispose();
    super.dispose();
  }

  void _onTapDown(TapDownDetails _) {
    _pressController.forward();
  }

  void _onTapUp(TapUpDetails _) {
    _pressController.reverse();
  }

  void _onTapCancel() {
    _pressController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final effectiveRadius =
        widget.borderRadius?.resolve(Directionality.maybeOf(context)) ??
        BorderRadius.circular(16);
    final hasExtrusion =
        widget.extrusionColor != null && widget.extrusionHeight > 0;

    return Container(
      margin: widget.margin,
      child: AnimatedBuilder(
        animation: _pressController,
        builder: (context, _) {
          final currentOffset = _translateAnimation.value;
          final remainingExtrusion = (widget.extrusionHeight - currentOffset)
              .clamp(0.0, widget.extrusionHeight);

          return Transform.translate(
            offset: Offset(0, currentOffset),
            child: Container(
              width: widget.width,
              height: widget.height,
              decoration: BoxDecoration(
                color: widget.gradient == null
                    ? (widget.backgroundColor ?? Colors.white)
                    : null,
                gradient: widget.gradient,
                borderRadius: effectiveRadius,
                border: widget.borderWidth > 0
                    ? Border.all(
                        color: widget.borderColor,
                        width: widget.borderWidth,
                      )
                    : null,
                boxShadow: [
                  if (hasExtrusion && remainingExtrusion > 0)
                    BoxShadow(
                      color: widget.extrusionColor!,
                      offset: Offset(0, remainingExtrusion),
                    ),
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.15),
                    offset: Offset(0, remainingExtrusion + 3),
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Material(
                color: Colors.transparent,
                borderRadius: effectiveRadius,
                child: InkWell(
                  borderRadius: effectiveRadius,
                  onTap: widget.onTap ?? () {},
                  onTapDown: _onTapDown,
                  onTapUp: _onTapUp,
                  onTapCancel: _onTapCancel,
                  child: Padding(
                    padding: widget.padding,
                    child: widget.child,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
