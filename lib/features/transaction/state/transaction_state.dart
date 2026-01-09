import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:finance_mobile_app/features/transaction/domains/models/transaction.dart'
    show TransactionGroup;
import 'package:finance_mobile_app/features/transaction/domains/repository/transaction_repository.dart';

abstract class TransactionsState extends Equatable {
  const TransactionsState();

  @override
  List<Object> get props => [];
}

class TransactionsInitial extends TransactionsState {}

class TransactionsLoading extends TransactionsState {}

class TransactionsLoaded extends TransactionsState {
  final List<TransactionGroup> transactions;

  const TransactionsLoaded(this.transactions);

  @override
  List<Object> get props => [transactions];
}

class TransactionsError extends TransactionsState {
  final String message;

  const TransactionsError(this.message);

  @override
  List<Object> get props => [message];
}

class TransactionsCubit extends Cubit<TransactionsState> {
  final TransactionRepository _repository;

  TransactionsCubit({required TransactionRepository repository})
    : _repository = repository,
      super(TransactionsInitial());

  Future<void> loadTransactions() async {
    emit(TransactionsLoading());
    try {
      final transactions = await _repository.getTransactions();
      emit(TransactionsLoaded(transactions));
    } catch (e) {
      emit(const TransactionsError("Failed to fetch transactions"));
    }
  }
}
