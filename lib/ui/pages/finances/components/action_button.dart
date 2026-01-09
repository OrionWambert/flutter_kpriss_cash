import 'package:finance_mobile_app/ui/core_components/interactive_wrapper.dart'
    show InteractiveWrapper;
import 'package:flutter/material.dart';

class ActionBtn extends StatelessWidget {
  const ActionBtn({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InteractiveWrapper(
      child: Column(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black12),
            ),
            child: Icon(icon, color: Colors.black54, size: 22),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}
