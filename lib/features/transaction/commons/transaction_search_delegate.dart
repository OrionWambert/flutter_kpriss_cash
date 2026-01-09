import 'package:finance_mobile_app/features/transaction/state/transaction_state.dart'
    show TransactionsCubit, TransactionsState, TransactionsLoading, TransactionsError, TransactionsLoaded;
import 'package:finance_mobile_app/ui/pages/transactions/components/transaction_card.dart'
    show TransactionCard;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransactionSearchDelegate extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          icon: const Icon(Icons.clear),
          onPressed: () {
            query = '';
          },
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query.isEmpty) {
      return const Center(
        child: Text('Entrez un terme de recherche'),
      );
    }

    return BlocBuilder<TransactionsCubit, TransactionsState>(
      builder: (context, state) {
        if (state is TransactionsLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is TransactionsError) {
          return Center(child: Text('Erreur: ${state.message}'));
        }

        if (state is TransactionsLoaded) {
          final allTransactions = state.transactions
              .expand((group) => group.items)
              .toList();

          final filteredTransactions = allTransactions.where((transaction) {
            final searchQuery = query.toLowerCase();
            return transaction.name.toLowerCase().contains(searchQuery) ||
                transaction.category.toLowerCase().contains(searchQuery) ||
                transaction.amount.toString().contains(searchQuery);
          }).toList();

          if (filteredTransactions.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.search_off,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Aucun résultat pour "$query"',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: filteredTransactions.length,
            itemBuilder: (context, index) {
              final transaction = filteredTransactions[index];
              return TransactionCard(transaction: transaction);
            },
          );
        }

        return const Center(child: Text('Aucune transaction trouvée'));
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return const Center(
        child: Text('Commencez à taper pour rechercher'),
      );
    }

    return BlocBuilder<TransactionsCubit, TransactionsState>(
      builder: (context, state) {
        if (state is TransactionsLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is TransactionsError || state is! TransactionsLoaded) {
          return const SizedBox.shrink();
        }

        final allTransactions = state.transactions
            .expand((group) => group.items)
            .toList();

        final suggestions = allTransactions
            .where((transaction) {
              final searchQuery = query.toLowerCase();
              return transaction.name.toLowerCase().contains(searchQuery) ||
                  transaction.category.toLowerCase().contains(searchQuery);
            })
            .take(5)
            .toList();

        if (suggestions.isEmpty) {
          return const SizedBox.shrink();
        }

        return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final transaction = suggestions[index];
            return ListTile(
              leading: const Icon(Icons.history),
              title: Text(transaction.name),
              subtitle: Text(transaction.category),
              onTap: () {
                query = transaction.name;
                showResults(context);
              },
            );
          },
        );
      },
    );
  }
}
