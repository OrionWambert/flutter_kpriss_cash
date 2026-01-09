import 'package:finance_mobile_app/features/transaction/domains/models/currency.dart'
    show Currency;
import 'package:finance_mobile_app/ui/pages/finances/components/add_currency_card.dart'
    show AddCurrencyCard;
import 'package:finance_mobile_app/ui/pages/finances/components/currency_card.dart'
    show CurrencyCard;
import 'package:flutter/material.dart';

class CurrencySection extends StatelessWidget {
  const CurrencySection({super.key, required this.currencies});

  final List<Currency> currencies;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Mes devises',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 16),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 200, minHeight: 200),
            child: Row(
              children: [
                ...currencies.map(
                  (c) => Expanded(child: CurrencyCard(currency: c)),
                ),
                const SizedBox(width: 12),
                const Expanded(child: AddCurrencyCard()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
