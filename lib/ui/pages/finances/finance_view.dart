import 'package:finance_mobile_app/features/transaction/state/finance_state.dart'
    show FinanceState;
import 'package:finance_mobile_app/ui/core_components/background_gradient.dart'
    show BackgroundGradient;
import 'package:finance_mobile_app/ui/core_components/entrance_animation.dart'
    show EntranceAnimation;
import 'package:finance_mobile_app/ui/core_components/loading.dart'
    show LoadingState;
import 'package:finance_mobile_app/ui/pages/finances/components/balance_card.dart'
    show BalanceCard;
import 'package:finance_mobile_app/ui/pages/finances/components/currency_section.dart'
    show CurrencySection;
import 'package:finance_mobile_app/ui/pages/finances/components/floating_button_nav.dart'
    show FloatingBottomNav;
import 'package:finance_mobile_app/ui/pages/finances/components/header.dart'
    show Header;
import 'package:finance_mobile_app/ui/pages/finances/components/transaction_section.dart'
    show TransactionSection;
import 'package:flutter/material.dart';

class FinanceView extends StatelessWidget {
  const FinanceView({required this.state, super.key});

  final FinanceState state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundGradient(),
          SafeArea(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(height: 32),
                  EntranceAnimation(
                    delay: const Duration(milliseconds: 200),
                    child: BalanceCard(),
                  ),
                  const SizedBox(height: 32),
                  if (state.isLoading)
                    const LoadingState()
                  else ...[
                    EntranceAnimation(
                      delay: const Duration(milliseconds: 400),
                      child: TransactionSection(
                        transactions: state.transactions,
                      ),
                    ),
                    const SizedBox(height: 32),
                    EntranceAnimation(
                      delay: const Duration(milliseconds: 600),
                      child: CurrencySection(currencies: state.currencies),
                    ),
                  ],
                  const SizedBox(height: 120),
                ],
              ),
            ),
          ),
          const FloatingBottomNav(),
        ],
      ),
    );
  }
}
