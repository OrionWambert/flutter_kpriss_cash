import 'package:finance_mobile_app/features/transaction/domains/models/transaction.dart'
    show Transaction;
import 'package:finance_mobile_app/ui/core_components/interactive_wrapper.dart'
    show InteractiveWrapper;
import 'package:finance_mobile_app/ui/pages/finances/components/category_icon.dart';
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  const TransactionTile({super.key, required this.tx});

  final Transaction tx;

  @override
  Widget build(BuildContext context) {
    return InteractiveWrapper(
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CategoryIcon(category: tx.category),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tx.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      tx.timestamp,
                      style: const TextStyle(
                        color: Colors.black26,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              '\$${tx.amount.abs()}',
              style: TextStyle(
                color: tx.amount < 0 ? Colors.redAccent : Colors.green,
                fontWeight: FontWeight.w900,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
