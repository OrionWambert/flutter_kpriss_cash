import 'package:finance_mobile_app/features/transaction/domains/models/transaction.dart'
    show TransactionGroup;
import 'package:finance_mobile_app/ui/pages/transactions/components/transaction_card.dart'
    show TransactionCard;
import 'package:flutter/material.dart';

class TransactionGroupWidget extends StatelessWidget {
  const TransactionGroupWidget({super.key, required this.group});

  final TransactionGroup group;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Text(
              group.label,
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 13,
                fontWeight: FontWeight.w500,
                letterSpacing: 0.5,
              ),
            ),
          ),
          ...group.items.map((item) => TransactionCard(transaction: item)),
        ],
      ),
    );
  }
}


