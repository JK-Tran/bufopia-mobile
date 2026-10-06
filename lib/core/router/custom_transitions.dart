import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final CurveTween _curveTween = CurveTween(curve: Curves.fastOutSlowIn);

class FadeTransitionPage extends CustomTransitionPage<void> {
  const FadeTransitionPage({
    required super.child,
    super.name,
    super.arguments,
    super.restorationId,
    super.key,
  }) : super(transitionsBuilder: _transitionsBuilder);

  static Widget _transitionsBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => FadeTransition(
    opacity: animation.drive(_curveTween),
    child: child,
  );
}

class ScaleTransitionPage extends CustomTransitionPage<void> {
  const ScaleTransitionPage({
    required super.child,
    super.name,
    super.arguments,
    super.restorationId,
    super.key,
  }) : super(transitionsBuilder: _transitionsBuilder);

  static Widget _transitionsBuilder(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) => ScaleTransition(
    scale: animation.drive(_curveTween),
    child: child,
  );
}

class SlideTransitionPage extends CustomTransitionPage<void> {
  SlideTransitionPage({
    required super.child,
    Offset begin = const Offset(1, 0),
    super.name,
    super.arguments,
    super.restorationId,
    super.key,
  }) : super(
         transitionsBuilder: (context, animation, secondaryAnimation, child) =>
             SlideTransition(
               position: Tween<Offset>(
                 begin: begin,
                 end: Offset.zero,
               ).animate(animation.drive(_curveTween)),
               child: child,
             ),
       );
}
