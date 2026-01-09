import 'package:flutter/material.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 24,
              height: 4,
              decoration: BoxDecoration(
                color: const Color(0xFFB4FF4B),
                borderRadius: BorderRadius.circular(2),
              ),
            ),
            const SizedBox(height: 2),
            Container(
              width: 16,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
