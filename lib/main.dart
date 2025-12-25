import 'package:flutter/material.dart';
import 'package:intravision/features/onboarding/presentation/screens/onboarding_screen.dart';
// import 'package:intravision/features/splash/presentation/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
