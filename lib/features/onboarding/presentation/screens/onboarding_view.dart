import 'package:flutter/material.dart';
import 'package:intravision/core/constants/app_colors.dart';
import 'package:intravision/core/widgets/buttons/primary_button.dart';
import 'package:intravision/features/onboarding/presentation/widgets/onboarding_indicator.dart';
import 'package:intravision/features/onboarding/presentation/widgets/onboarding_page.screen.dart';
import 'package:intravision/features/onboarding/presentation/widgets/onboarding_skip.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({
    super.key,
    required this.controller,
    required this.currentIndex,
    required this.onPageChanged,
    required this.onNext,
    required this.onSkip,
  });

  final PageController controller;
  final int currentIndex;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onNext;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBackgroundLight,
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: OnboardingSkipButton(onPressed: onSkip),
            ),

            Expanded(
              child: PageView(
                controller: controller,
                onPageChanged: onPageChanged,
                children: const [
                  OnboardingPage(
                    title: 'AI-Powered Brain Tumor Analysis',
                    subtitle:
                        'Advanced machine learning technology for accurate and reliable brain tumor detection and analysis',
                    image: 'assets/images/logo/logo_blue.png',
                  ),
                  OnboardingPage(
                    title: 'Upload MRI & Get Instant Results',
                    subtitle:
                        'Safe, secure, and fast MRI insights powered by cutting-edge AI technology.',
                    image: 'assets/images/logo/logo_blue.png',
                  ),
                  OnboardingPage(
                    title: 'Fast & Accurate Diagnosis',
                    subtitle:
                        'Advanced deep learning algorithms provide precise tumor detection in seconds.',
                    image: 'assets/images/logo/logo_blue.png',
                  ),
                ],
              ),
            ),

            OnboardingIndicator(currentIndex: currentIndex),

            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 30),
              child: PrimaryButton(
                title: currentIndex == 2 ? 'Get Started' : 'Next',
                onPressed: onNext,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
