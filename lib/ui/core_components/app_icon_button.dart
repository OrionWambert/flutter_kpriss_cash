import 'package:flutter/material.dart';

import 'interactive_wrapper.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({super.key, required this.icon, this.onTap});

  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InteractiveWrapper(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.5),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 22, color: Colors.black87),
        ),
      ),
    );
  }
}
