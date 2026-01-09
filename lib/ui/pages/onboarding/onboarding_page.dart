import 'package:finance_mobile_app/dependency_injection.dart';
import 'package:finance_mobile_app/features/onboarding/state/user_bloc.dart'
    show UserBloc;
import 'package:finance_mobile_app/ui/pages/onboarding/view.dart'
    show OnboardingView;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// [OnboardingPage]
/// RESPONSABILITÉ : Configuration et Injection de Dépendances.
/// C'est le point d'entrée. Elle injecte le BLoC nécessaire à la View.
/// Elle ne contient PAS de code d'interface utilisateur (Widgets visuels).
class OnboardingPage extends StatelessWidget {
  static final String routeName = '/onboarding';

  const OnboardingPage({super.key});

  /// Helper statique pour faciliter la navigation (Convention VGV)
  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const OnboardingPage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<UserBloc>(),
      child: const OnboardingView(),
    );
  }
}
