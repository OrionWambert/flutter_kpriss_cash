import 'package:finance_mobile_app/features/transaction/domains/repository/finance_repository.dart';
import 'package:finance_mobile_app/features/transaction/state/finance_state.dart';
import 'package:flutter/material.dart';

class FinanceController extends ValueNotifier<FinanceState> {
  FinanceController({required this.repository}) : super(const FinanceState());

  final FinanceRepository repository;

  Future<void> loadDashboard() async {
    state = state.copyWith(isLoading: true);
    final transactions = await repository.getTransactions();
    final currencies = await repository.getCurrencies();
    state = state.copyWith(
      isLoading: false,
      transactions: transactions,
      currencies: currencies,
    );
  }

  FinanceState get state => value;

  set state(FinanceState newState) => value = newState;
}
