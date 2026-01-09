import 'package:finance_mobile_app/ui/pages/finances/components/activity_row.dart'
    show ActionRow;
import 'package:finance_mobile_app/ui/pages/finances/components/trending_row.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatefulWidget {
  const BalanceCard({super.key});

  @override
  State<BalanceCard> createState() => _BalanceCardState();
}

class _BalanceCardState extends State<BalanceCard> {
  bool _isBalanceVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(44),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF10B981).withValues(alpha: 0.1),
            blurRadius: 30,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      padding: const EdgeInsets.all(8),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFFAFF8C),
              borderRadius: BorderRadius.circular(38),
            ),
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'USD',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black45,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 4),
                  ],
                ),
                const SizedBox(height: 8),
                _isBalanceVisible
                    ? const Text(
                        '1 USD = EUR 0.95 = GBR 0.79',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38,
                        ),
                      )
                    : const SizedBox.shrink(),
                const SizedBox(height: 8),
                Text(
                  _isBalanceVisible ? '\$26,887.09' : '••••••',
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    letterSpacing: -1.5,
                  ),
                ),

                IconButton(
                  onPressed: () {
                    setState(() {
                      _isBalanceVisible = !_isBalanceVisible;
                    });
                  },
                  icon: Icon(
                    _isBalanceVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    size: 20,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                TrendIndicator(),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 24),
            child: ActionRow(),
          ),
        ],
      ),
    );
  }
}
