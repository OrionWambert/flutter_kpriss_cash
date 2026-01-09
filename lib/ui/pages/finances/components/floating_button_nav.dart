import 'dart:ui';

import 'package:finance_mobile_app/generated/assets.dart' show Assets;
import 'package:finance_mobile_app/ui/pages/finances/components/nav_icon.dart'
    show NavIcon;
import 'package:flutter/material.dart';

class FloatingBottomNav extends StatelessWidget {
  const FloatingBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      left: 0,
      right: 0,
      child: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(40),
                border: Border.all(color: Colors.white.withOpacity(0.5)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 20,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  NavIcon(asset: Assets.iconesOut, active: false),
                  SizedBox(width: 8),
                  NavIcon(asset: Assets.iconesHome, active: true),
                  SizedBox(width: 8),
                  NavIcon(asset: Assets.iconesInt, active: false),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
