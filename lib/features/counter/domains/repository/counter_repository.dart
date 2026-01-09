
import 'package:dartz/dartz.dart';
import 'package:finance_mobile_app/core/error/failure.dart';

abstract class CounterRepository{
  Future<Either<Failure, int>> incrementCounter();
}