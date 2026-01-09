import 'package:equatable/equatable.dart';

class Transaction {
  const Transaction({
    required this.id,
    required this.name,
    required this.category,
    required this.amount,
    required this.timestamp,
  });

  final String id;
  final String name;
  final String category;
  final double amount;
  final String timestamp;
}

class TransactionGroup extends Equatable {
  final String label;
  final List<Transaction> items;

  const TransactionGroup({required this.label, required this.items});

  @override
  List<Object?> get props => [label, items];
}
