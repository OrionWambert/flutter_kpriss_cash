import 'package:flutter/material.dart';

class IncrementFloatingActionButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;

  const IncrementFloatingActionButton({
    super.key,
    required this.child,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: child,
    );
  }
}
