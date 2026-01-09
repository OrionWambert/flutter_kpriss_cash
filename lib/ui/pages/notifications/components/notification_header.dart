import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationHeader extends StatelessWidget {
  const NotificationHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 48, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () {
              if (context.canPop()) {
                context.pop();
              } else {
                context.go('/');
              }
            },
          ),
          const Text(
            "Notifications",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1F2937),
              letterSpacing: -0.5,
            ),
          ),
          const SizedBox(width: 48),
        ],
      ),
    );
  }
}

