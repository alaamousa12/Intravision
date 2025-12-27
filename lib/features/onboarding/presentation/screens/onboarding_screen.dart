import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/routes/app_routes.dart';
import '../../cubit/onboarding_cubit.dart';
import 'onboarding_view.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late final PageController _controller;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  void _onPageChanged(int index) {
    setState(() => _currentIndex = index);
  }

  void _next() async {
    if (_currentIndex < 2) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      // 1️⃣ إكمال الـ onboarding رسميًا
      await context.read<OnboardingCubit>().complete();

      if (!mounted) return;

      // 2️⃣ الانتقال لروت محمي
      Navigator.pushReplacementNamed(context, AppRoutes.login);
    }
  }

  void _skipToLast() {
    _controller.animateToPage(
      2,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return OnboardingView(
      controller: _controller,
      currentIndex: _currentIndex,
      onPageChanged: _onPageChanged,
      onNext: _next,
      onSkip: _skipToLast,
    );
  }
}
