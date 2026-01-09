import 'package:flutter/material.dart';

class EntranceAnimation extends StatelessWidget {
  const EntranceAnimation({
    super.key,
    required this.child,
    required this.delay,
  });

  final Widget child;
  final Duration delay;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeOutQuart,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 30 * (1 - value)),
            child: child,
          ),
        );
      },
      child: child,
    );
  }
}
