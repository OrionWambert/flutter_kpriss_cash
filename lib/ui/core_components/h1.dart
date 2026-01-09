import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:finance_mobile_app/ui/styles/styles.dart';

class H1 extends StatelessWidget {
  final String text;

  const H1({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AutoSizeText(
      text,
      style: const TextStyle(
        fontSize: AppTypography.sizeFULL,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
