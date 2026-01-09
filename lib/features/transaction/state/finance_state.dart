import 'package:finance_mobile_app/features/transaction/domains/models/currency.dart';
import 'package:finance_mobile_app/features/transaction/domains/models/transaction.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'finance_state.freezed.dart';

@freezed
abstract class FinanceState with _$FinanceState {
  const factory FinanceState({
    @Default(false) bool isLoading,
    @Default([]) List<Transaction> transactions,
    @Default([]) List<Currency> currencies,
  }) = _FinanceState;
}
