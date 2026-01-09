import 'dart:ui';
import 'package:flutter/material.dart';

class BlurBlob extends StatelessWidget {
  const BlurBlob({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      decoration: BoxDecoration(
        color: color.withOpacity(0.5),
        shape: BoxShape.circle,
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
        child: Container(color: Colors.transparent),
      ),
    );
  }
}


