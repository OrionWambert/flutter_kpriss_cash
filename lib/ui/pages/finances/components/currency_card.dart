import 'package:finance_mobile_app/features/transaction/domains/models/currency.dart'
    show Currency;
import 'package:finance_mobile_app/ui/core_components/interactive_wrapper.dart'
    show InteractiveWrapper;
import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  const CurrencyCard({super.key, required this.currency});

  final Currency currency;

  @override
  Widget build(BuildContext context) {
    return InteractiveWrapper(
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(14.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Color(currency.hexColor),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Text(
                  currency.symbol,
                  style: TextStyle(
                    color: Color(currency.hexAccentColor),
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              currency.name,
              style: const TextStyle(
                color: Colors.black26,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              currency.value,
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
