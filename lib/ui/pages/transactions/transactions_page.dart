import 'package:finance_mobile_app/ui/pages/transactions/view.dart'
    show TransactionsView;
import 'package:flutter/material.dart';

class TransactionsPage extends StatelessWidget {
  static final String routeName = "/transactions";
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const TransactionsView();
  }
}