import 'package:dartz/dartz.dart';
import 'package:finance_mobile_app/core/error/failure.dart';
import 'package:finance_mobile_app/core/usecase/use_case.dart';
import 'package:finance_mobile_app/features/counter/domains/repository/counter_repository.dart';

class IncrementCounterUseCase
    implements UserCase<Future<Either<Failure, int>>, NoParam> {
  final CounterRepository counterRepository;

  const IncrementCounterUseCase(this.counterRepository);

  @override
  Future<Either<Failure, int>> call(NoParam value) {
    return counterRepository.incrementCounter();
  }
}
