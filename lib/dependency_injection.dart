import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:finance_mobile_app/core/network/network_info.dart';
import 'package:finance_mobile_app/features/counter/bloc/counter_bloc/counter_bloc.dart';
import 'package:finance_mobile_app/features/counter/data/datasources/counter_local_datasource.dart';
import 'package:finance_mobile_app/features/counter/data/datasources/counter_remote_datasource.dart';
import 'package:finance_mobile_app/features/counter/data/repo_impl/counter_repository_impl.dart';
import 'package:finance_mobile_app/features/counter/domains/repository/counter_repository.dart';
import 'package:finance_mobile_app/features/counter/domains/usecase/increment_counter_usecase.dart';
import 'package:finance_mobile_app/features/notification/domains/repository/notification_repository.dart';
import 'package:finance_mobile_app/features/notification/state/notification_state.dart'
    show NotificationCubit;
import 'package:finance_mobile_app/features/onboarding/data/datasources/user_abstract_datasource.dart';
import 'package:finance_mobile_app/features/onboarding/data/datasources/user_remote_datasource.dart';
import 'package:finance_mobile_app/features/onboarding/domains/repository/user_repository.dart';
import 'package:finance_mobile_app/features/onboarding/state/user_bloc.dart'
    show UserBloc;
import 'package:finance_mobile_app/features/transaction/domains/repository/finance_repository.dart';
import 'package:finance_mobile_app/features/transaction/domains/repository/transaction_repository.dart';
import 'package:finance_mobile_app/features/transaction/state/finance_controller.dart';
import 'package:finance_mobile_app/features/transaction/state/transaction_state.dart'
    show TransactionsCubit;

final sl = GetIt.instance;

void setupDI() {

  //Bloc
  sl.registerLazySingleton<CounterBloc>(
    () => CounterBloc(
      IncrementCounterUseCase(
        sl(),
      ),
    ),
  );

  sl.registerLazySingleton<TransactionsCubit>(
    () => TransactionsCubit(repository: sl<TransactionRepository>())
      ..loadTransactions(),
  );

  sl.registerLazySingleton<NotificationCubit>(
    () => NotificationCubit(repository: sl<NotificationRepository>()),
  );

  sl.registerLazySingleton<UserBloc>(
    () => UserBloc(userRepository: sl<UserRepository>()),
  );

  // Use Cases
  sl.registerLazySingleton<IncrementCounterUseCase>(
    () => IncrementCounterUseCase(
      sl(),
    ),
  );

  //Repository
  sl.registerLazySingleton<CounterRepository>(
    () => CounterRepositoryImpl(sl(), sl(), sl()),
  );

  // DataSource
  sl.registerLazySingleton<CounterLocalDataSource>(
      () => CounterLocalDataSource());

  sl.registerLazySingleton<CounterRemoteDataSource>(
      () => CounterRemoteDataSource());

  //External
  final InternetConnection internetConnection = InternetConnection();
  final Connectivity connectivity = Connectivity();

  sl.registerLazySingleton(() => internetConnection);
  sl.registerLazySingleton(() => connectivity);

  //Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl(), sl()));

  // Finance Repositories
  sl.registerLazySingleton<FinanceRepository>(() => FinanceRepository());
  sl.registerLazySingleton<TransactionRepository>(() => TransactionRepository());

  // Notification Repositories
  sl.registerLazySingleton<NotificationRepository>(() => NotificationRepository());

  // Onboarding DataSources
  sl.registerLazySingleton<UserAbstractDataSource>(
    () => UserRemoteDataSource(),
  );

  // Onboarding Repositories
  sl.registerLazySingleton<UserRepository>(
    () => UserRepository(dataSource: sl<UserAbstractDataSource>()),
  );

  // Finance Controllers
  sl.registerFactory<FinanceController>(
    () => FinanceController(repository: sl<FinanceRepository>()),
  );
}
