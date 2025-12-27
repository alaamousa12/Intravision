import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intravision/core/constants/app_assets.dart';
import 'package:intravision/core/routes/app_routes.dart';
import 'package:intravision/core/routes/route_guards.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _bootstrap();
  }

  Future<void> _bootstrap() async {
    // ✅ تهيئة الحالة (مؤقتة لحين ربط Storage حقيقي)
    RouteGuards.isLoggedIn = false;
    RouteGuards.hasGivenMedicalConsent = false;
    // hasCompletedOnboarding يتم تحميله من OnboardingCubit تلقائيًا

    // Splash delay
    await Future.delayed(const Duration(seconds: 4));
    if (!mounted) return;

    // ✅ سيب الـ Guard يقرر المسار الصح
    final guardedRoute = RouteGuards.guard(AppRoutes.main);

    Navigator.pushReplacementNamed(context, guardedRoute ?? AppRoutes.main);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Center(child: Image.asset(AppAssets.logoMain, width: 160)),
            Positioned(
              bottom: 24,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'from intra_vision',
                    style: Theme.of(
                      context,
                    ).textTheme.bodySmall?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(width: 8),
                  Image.asset(AppAssets.logoSmall, width: 20, height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
