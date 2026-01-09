import 'package:finance_mobile_app/features/transaction/domains/repository/finance_repository.dart'
    show FinanceRepository;
import 'package:finance_mobile_app/features/transaction/state/finance_controller.dart'
    show FinanceController;
import 'package:finance_mobile_app/features/transaction/state/finance_state.dart'
    show FinanceState;
import 'package:finance_mobile_app/ui/pages/finances/finance_view.dart'
    show FinanceView;
import 'package:flutter/material.dart';

class FinancePage extends StatefulWidget {
  const FinancePage({super.key});

  @override
  State<FinancePage> createState() => _FinancePageState();
}

class _FinancePageState extends State<FinancePage> {
  late final FinanceRepository _repository;
  late final FinanceController _controller;

  @override
  void initState() {
    super.initState();
    _repository = FinanceRepository();
    _controller = FinanceController(repository: _repository);
    _controller.loadDashboard();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<FinanceState>(
      valueListenable: _controller,
      builder: (context, state, _) {
        return FinanceView(state: state);
      },
    );
  }
}
