import 'package:finance_mobile_app/features/transaction/domains/models/transaction.dart';

class TransactionRepository {
  Future<List<TransactionGroup>> getTransactions() async {
    // Simuler un délai réseau
    await Future.delayed(const Duration(milliseconds: 800));

    // Données mockées
    return [
      TransactionGroup(
        label: "Today",
        items: const [
          Transaction(
            id: '1',
            name: "Eva Novak",
            category: "Transfer",
            amount: 5710.20,
            timestamp: "2 hours ago",
          ),
          Transaction(
            id: '2',
            name: "Binance",
            category: "Crypto",
            amount: 714.00,
            timestamp: "3 hours ago",
          ),
        ],
      ),
      TransactionGroup(
        label: "Yesterday",
        items: const [
          Transaction(
            id: '3',
            name: "Henrik Jansen",
            category: "Transfer",
            amount: 428.00,
            timestamp: "Yesterday",
          ),
          Transaction(
            id: '4',
            name: "Multiplex",
            category: "Entertainment",
            amount: -124.55,
            timestamp: "Yesterday",
          ),
          Transaction(
            id: '5',
            name: "Nike",
            category: "Shopping",
            amount: -328.96,
            timestamp: "Yesterday",
          ),
        ],
      ),
      TransactionGroup(
        label: "19 November",
        items: const [
          Transaction(
            id: '6',
            name: "Matteo Ricci",
            category: "Transfer",
            amount: 548.00,
            timestamp: "19 November",
          ),
          Transaction(
            id: '7',
            name: "Megogo",
            category: "Entertainment",
            amount: -847.20,
            timestamp: "19 November",
          ),
          Transaction(
            id: '8',
            name: "Emilia Costa",
            category: "Transfer",
            amount: 147.00,
            timestamp: "19 November",
          ),
        ],
      ),
    ];
  }
}
