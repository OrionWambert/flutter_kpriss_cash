import 'package:flutter/material.dart';

class TrendIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Text(
        '+\$421.03',
        style: TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }
}
