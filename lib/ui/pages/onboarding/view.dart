import 'package:delayed_display/delayed_display.dart';
import 'package:finance_mobile_app/ui/pages/onboarding/components/name_selector.dart'
    show NameSelector;
import 'package:finance_mobile_app/ui/pages/onboarding/components/onboarding_footer.dart'
    show OnboardingFooter;
import 'package:finance_mobile_app/ui/pages/onboarding/components/onboarding_header.dart'
    show OnboardingHeader;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// [OnboardingView]
/// RESPONSABILITÉ : Rendu Visuel.
/// Elle consomme l'état du BLoC pour dessiner l'écran.
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    // Colors extracted exactly from the CSS gradient
    const List<Color> gradientColors = [
      Color(0xFFFFFFFF),
      Color(0xFFFFFFFF),
      Color(0xFFFFF0E6),
      Color(0xFFFFDECA),
      Color(0xFFFF8EB2),
      Color(0xFFFF6CA0),
    ];

    const List<double> gradientStops = [
      0.0,
      0.4,
      0.55,
      0.70,
      0.90,
      1.0,
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: gradientColors,
            stops: gradientStops,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
            child: Column(
              children: [
                const SizedBox(height: 16),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 200),
                  child: const OnboardingHeader(),
                ),
                const Spacer(flex: 2),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 400),
                  child: const NameSelector(),
                ),
                const SizedBox(height: 40),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 600),
                  child: _buildTitle(),
                ),
                const SizedBox(height: 24),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 800),
                  child: _buildDescription(),
                ),
                const Spacer(flex: 3),
                DelayedDisplay(
                  delay: const Duration(milliseconds: 1000),
                  child: const OnboardingFooter(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      "Choose your\ndisplay name",
      textAlign: TextAlign.center,
      style: GoogleFonts.playfairDisplay(
        fontSize: 36,
        height: 1.1,
        color: const Color(0xFF1A1A1A),
      ),
    );
  }

  Widget _buildDescription() {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 350),
      child: Text(
        "CHOOSE A NAME. BE WHOEVER YOU WANT TO BE. NAMES AND LABELS DON'T MATTER.\n\nWHAT MATTERS IS YOU ARE HERE. NOW.",
        textAlign: TextAlign.center,
        style: GoogleFonts.spaceMono(
          fontSize: 12,
          letterSpacing: 2.0,
          height: 1.8,
          color: const Color(0xFF1A1A1A),
        ),
      ),
    );
  }
}
