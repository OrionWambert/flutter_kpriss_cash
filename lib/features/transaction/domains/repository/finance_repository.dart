import 'package:finance_mobile_app/features/transaction/domains/models/currency.dart';
import 'package:finance_mobile_app/features/transaction/domains/models/transaction.dart';

class FinanceRepository {
  Future<List<Transaction>> getTransactions() async {
    await Future.delayed(const Duration(milliseconds: 800));
    return [
      const Transaction(
        id: '1',
        name: 'Megogo',
        category: 'Entertainment',
        amount: -24.99,
        timestamp: '1 min ago',
      ),
    ];
  }

  Future<List<Currency>> getCurrencies() async {
    return [
      const Currency(
        symbol: '€',
        name: 'Euro',
        value: '0.97',
        hexColor: 0xFFE8F5E9,
        hexAccentColor: 0xFF4CAF50,
      ),
      const Currency(
        symbol: '£',
        name: 'British pound',
        value: '0.82',
        hexColor: 0xFFE3F2FD,
        hexAccentColor: 0xFF2196F3,
      ),
    ];
  }
}
