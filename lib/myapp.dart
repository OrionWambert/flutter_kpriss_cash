import 'package:easy_localization/easy_localization.dart';
import 'package:finance_mobile_app/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'dependency_injection.dart';
import 'features/counter/bloc/counter_bloc/counter_bloc.dart';
import 'features/notification/state/notification_state.dart'
    show NotificationCubit;
import 'features/onboarding/state/user_bloc.dart' show UserBloc;
import 'features/transaction/state/transaction_state.dart'
    show TransactionsCubit;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<CounterBloc>()),
        BlocProvider(create: (_) => sl<TransactionsCubit>()),
        BlocProvider(create: (_) => sl<NotificationCubit>()),
        BlocProvider(create: (_) => sl<UserBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        builder: (_, child) {
          return ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: "4k"),
            ],
          );
        },
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: GoogleFonts.oranienbaum().fontFamily,
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xFFFAFF8C),
            primary: const Color(0xFF1A1C1E),
            secondary: const Color(0xFFFAFF8C),
            surface: const Color(0xFFF0F9F4),
          ),
        ),
      ),
    );
  }
}
