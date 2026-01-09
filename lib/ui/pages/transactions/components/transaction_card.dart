import 'package:finance_mobile_app/features/transaction/domains/models/transaction.dart'
    show Transaction;
import 'package:finance_mobile_app/ui/pages/finances/components/category_icon.dart'
    show CategoryIcon;
import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    final isCredit = transaction.amount > 0;
    final amountColor = isCredit ? const Color(0xFF2e7d32) : const Color(0xFFc62828);
    final amountPrefix = isCredit ? '+' : '';

    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.white.withOpacity(0.5)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.02),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.05),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            clipBehavior: Clip.antiAlias,
            child: Center(
              child: CategoryIcon(category: transaction.category),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF1F2937),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Text(
                      transaction.category,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF9CA3AF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 4),
                    const Icon(Icons.access_time, size: 12, color: Color(0xFFD1D5DB)),
                    const SizedBox(width: 4),
                    Text(
                      transaction.timestamp,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Color(0xFF9CA3AF),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "$amountPrefix\$${transaction.amount.abs().toStringAsFixed(2)}",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: amountColor,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 4),
              Icon(
                isCredit ? Icons.call_received : Icons.arrow_outward,
                size: 14,
                color: isCredit
                    ? Colors.green.withOpacity(0.5)
                    : Colors.red.withOpacity(0.5),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


