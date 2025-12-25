import 'package:flutter/material.dart';
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

  void _next() {
    if (_currentIndex < 2) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    } else {
      // TODO: navigate to login بعد onboarding
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
