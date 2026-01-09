import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';

class InteractiveWrapper extends StatefulWidget {
  const InteractiveWrapper({
    super.key,
    required this.child,
    this.onTap,
    this.delay,
    this.fadingDuration,
    this.slidingCurve,
    this.slidingBeginOffset,
  });

  final Widget child;
  final VoidCallback? onTap;
  final Duration? delay;
  final Duration? fadingDuration;
  final Curve? slidingCurve;
  final Offset? slidingBeginOffset;

  @override
  State<InteractiveWrapper> createState() => InteractiveWrapperState();
}

class InteractiveWrapperState extends State<InteractiveWrapper> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final interactiveChild = GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),
      onTap: widget.onTap,
      child: AnimatedScale(
        scale: _isPressed ? 0.95 : 1.0,
        duration: const Duration(milliseconds: 100),
        child: widget.child,
      ),
    );

    // Si un délai est spécifié, utiliser DelayedDisplay
    if (widget.delay != null) {
      return DelayedDisplay(
        delay: widget.delay!,
        fadingDuration: widget.fadingDuration ?? const Duration(milliseconds: 800),
        slidingCurve: widget.slidingCurve ?? Curves.decelerate,
        slidingBeginOffset: widget.slidingBeginOffset ?? const Offset(0.0, 0.35),
        child: interactiveChild,
      );
    }

    return interactiveChild;
  }
}
