import 'package:dartz/dartz.dart';
import 'package:finance_mobile_app/core/error/failure.dart';
import 'package:finance_mobile_app/core/network/network_info.dart';
import 'package:finance_mobile_app/features/counter/data/datasources/counter_local_datasource.dart';
import 'package:finance_mobile_app/features/counter/data/datasources/counter_remote_datasource.dart';
import 'package:finance_mobile_app/features/counter/domains/repository/counter_repository.dart';

class CounterRepositoryImpl implements CounterRepository {
  final CounterLocalDataSource counterLocalDataSource;
  final CounterRemoteDataSource counterRemoteDataSource;
  final NetworkInfo networkInfo;

  int counterValue = 0;

  CounterRepositoryImpl(
    this.counterLocalDataSource,
    this.counterRemoteDataSource,
    this.networkInfo,
  );

  @override
  Future<Either<Failure, int>> incrementCounter() async {
    try {
      final networkResult = await networkInfo.network;
      if (networkResult.isConnected) {
        counterValue = counterRemoteDataSource.incrementCounter(counterValue);
        return Right(counterValue);
      } else {
        counterValue = counterLocalDataSource.incrementCounter(counterValue);
        return Right(counterValue);
      }
    } catch (e) {
      return Left(InvalidCounterFailure());
    }
  }
}
