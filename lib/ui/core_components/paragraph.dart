import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:finance_mobile_app/ui/styles/styles.dart';

class Paragraph extends StatelessWidget {
  final String title;

  const Paragraph({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      title,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: AppTypography.sizeXS),
    );
  }
}
