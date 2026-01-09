import 'package:finance_mobile_app/features/onboarding/state/user_bloc.dart'
    show UserBloc;
import 'package:finance_mobile_app/features/onboarding/state/user_event.dart'
    show UserNameConfirmed;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingFooter extends StatelessWidget {
  const OnboardingFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "THIS IS A MANDATORY STEP\n& IT CANNOT BE REVERSED.",
          textAlign: TextAlign.center,
          style: GoogleFonts.spaceMono(
            fontSize: 10,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color: const Color(0xFF1A1A1A).withValues(alpha: 0.7),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          height: 60,
          child: ElevatedButton(
            onPressed: () {
              final state = context.read<UserBloc>().state;
              if (state.enteredName.trim().isNotEmpty) {
                context.read<UserBloc>().add(const UserNameConfirmed());
                // Navigate to home after confirmation
                context.go('/');
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
              elevation: 4,
              shadowColor: Colors.black.withValues(alpha: 0.3),
              shape: const StadiumBorder(),
            ),
            child: Text(
              "CONFIRM YOUR NAME",
              style: GoogleFonts.spaceMono(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}

