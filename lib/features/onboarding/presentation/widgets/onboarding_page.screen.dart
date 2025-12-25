import 'package:flutter/material.dart';
import 'package:intravision/core/constants/app_colors.dart';
import 'package:intravision/core/constants/app_fonts.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 220),
          const SizedBox(height: 32),

          Text(
            title,
            textAlign: TextAlign.center,
            style: AppFonts.h2.copyWith(color: AppColors.overlayDark),
          ),

          const SizedBox(height: 12),

          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: AppFonts.bodyRegular.copyWith(color: AppColors.disabled),
          ),
        ],
      ),
    );
  }
}
