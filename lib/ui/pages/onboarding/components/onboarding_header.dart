import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "~ ",
          style: GoogleFonts.playfairDisplay(
            fontSize: 24,
            fontWeight: FontWeight.w300,
            color: const Color(0xFF1A1A1A),
          ),
        ),
        Text(
          "KPRISS CASH",
          style: GoogleFonts.playfairDisplay(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A1A1A),
          ),
        ),
        Text(
          " ~",
          style: GoogleFonts.playfairDisplay(
            fontSize: 24,
            fontWeight: FontWeight.w300,
            color: const Color(0xFF1A1A1A),
          ),
        ),
      ],
    );
  }
}

