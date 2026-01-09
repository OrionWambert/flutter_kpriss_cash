import 'package:finance_mobile_app/ui/pages/finances/finance_page.dart';
import 'package:finance_mobile_app/ui/pages/notifications/notification_page.dart';
import 'package:finance_mobile_app/ui/pages/onboarding/onboarding_page.dart';
import 'package:finance_mobile_app/ui/pages/transactions/transactions_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: OnboardingPage.routeName,
  routes: [
    GoRoute(
      path: OnboardingPage.routeName,
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(path: '/', builder: (context, state) => const FinancePage()),
    GoRoute(
      path: TransactionsPage.routeName,
      builder: (context, state) => const TransactionsPage(),
    ),
    GoRoute(
      path: NotificationPage.routeName,
      builder: (context, state) => const NotificationPage(),
    ),
  ],
);
