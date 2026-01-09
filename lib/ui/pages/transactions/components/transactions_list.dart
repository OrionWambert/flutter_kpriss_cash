import 'package:finance_mobile_app/features/transaction/state/transaction_state.dart'
    show TransactionsCubit, TransactionsState, TransactionsLoading, TransactionsError, TransactionsLoaded;
import 'package:finance_mobile_app/ui/pages/transactions/components/transaction_group_widget.dart'
    show TransactionGroupWidget;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionsCubit, TransactionsState>(
      builder: (context, state) {
        if (state is TransactionsLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is TransactionsError) {
          return Center(child: Text(state.message));
        } else if (state is TransactionsLoaded) {
          return ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            itemCount: state.transactions.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              final group = state.transactions[index];
              return TransactionGroupWidget(group: group);
            },
          );
        }
        return const SizedBox.shrink();
      },
    );
  }
}


