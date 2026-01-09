import 'package:finance_mobile_app/features/transaction/domains/models/transaction.dart'
    show Transaction;
import 'package:finance_mobile_app/ui/pages/finances/components/transaction_tile.dart'
    show TransactionTile;
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Dernières transactions',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'See All',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        ...transactions.map((tx) => TransactionTile(tx: tx)).toList(),
      ],
    );
  }
}
