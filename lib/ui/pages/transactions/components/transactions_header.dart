import 'package:finance_mobile_app/features/transaction/commons/transaction_search_delegate.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TransactionsHeader extends StatelessWidget {
  const TransactionsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 48, bottom: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomIconButton(
            icon: Icons.chevron_left,
            onTap: () {
              if (context.canPop()) {
                context.pop();
              } else {
                context.go('/');
              }
            },
          ),
          const Text(
            "Transactions",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color(0xFF1F2937),
              letterSpacing: -0.5,
            ),
          ),
          CustomIconButton(
            icon: Icons.search,
            onTap: () {
              showSearch(
                  context: context, delegate: TransactionSearchDelegate());
            },
          ),
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.transparent,
      ),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: Icon(icon, color: Colors.grey[800], size: 24),
      ),
    );
  }
}
