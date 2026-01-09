import 'package:flutter/material.dart';
import 'package:finance_mobile_app/ui/styles/sizes.dart';

class AppIcon extends StatelessWidget {
  final IconData iconData;

  const AppIcon(this.iconData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconData,
      size: AppSizes.h_16,
    );
  }
}
