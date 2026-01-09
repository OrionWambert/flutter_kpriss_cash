import 'package:flutter/material.dart';

class CardSelector extends StatelessWidget {
  const CardSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 12, 20, 12),
        decoration: BoxDecoration(
          color: const Color(0xFF1a1f1e),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 32,
              height: 20,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color(0xFFeb001b).withOpacity(0.9),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: const Color(0xFFf79e1b).withOpacity(0.9),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Mastercard",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  "•••• 2872",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.5,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 4),
            const Icon(Icons.keyboard_arrow_down, color: Colors.grey, size: 18),
          ],
        ),
      ),
    );
  }
}


