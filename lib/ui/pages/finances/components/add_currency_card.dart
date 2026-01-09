import 'package:finance_mobile_app/ui/core_components/interactive_wrapper.dart'
    show InteractiveWrapper;
import 'package:flutter/material.dart';

class AddCurrencyCard extends StatelessWidget {
  const AddCurrencyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InteractiveWrapper(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1C1E),
          borderRadius: BorderRadius.circular(14),
        ),
        child: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .center,
          children: const [
            Icon(Icons.add, color: Colors.white, size: 28),
            SizedBox(height: 12),
            Text(
              'Add Currency',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
