import 'package:finance_mobile_app/ui/core_components/interactive_wrapper.dart'
    show InteractiveWrapper;
import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  const NavIcon({
    super.key,
    this.icon,
    required this.active,
    this.onPressed,
    this.asset,
  });

  final VoidCallback? onPressed;
  final IconData? icon;
  final bool active;
  final String? asset;

  @override
  Widget build(BuildContext context) {
    return InteractiveWrapper(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOutBack,
        width: active ? 64 : 50,
        height: active ? 64 : 50,
        decoration: BoxDecoration(
          color: active ? const Color(0xFF1A1C1E) : Colors.transparent,
          shape: BoxShape.circle,
          boxShadow: active
              ? [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 10,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: CustomAssetIcon(asset: asset, icon: icon, iconStatus: active),
      ),
    );
  }
}

class CustomAssetIcon extends StatelessWidget {
  const CustomAssetIcon({super.key, this.asset, this.icon, this.iconStatus});

  final bool? iconStatus;
  final String? asset;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return Icon(
        icon,
        color: iconStatus! ? Colors.white : Colors.black38,
        size: iconStatus! ? 28 : 22,
      );
    }
    if (asset != null) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(asset!, height: 10, width: 10),
      );
    }
    return SizedBox.shrink();
  }
}
