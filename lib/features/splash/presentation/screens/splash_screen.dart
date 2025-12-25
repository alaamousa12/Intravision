import 'package:flutter/material.dart';
import 'package:intravision/features/onboarding/presentation/screens/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // الانتقال بعد 3 ثوانٍ إلى OnboardingScreen
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: Column(
        children: [
          const Spacer(),
          Image.asset('assets/images/logo/logo_white.png', width: 150),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Text(
              "From IntraVision",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
