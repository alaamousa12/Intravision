import 'package:flutter/material.dart';
import 'package:intravision/core/constants/app_colors.dart';
import 'package:intravision/core/constants/app_fonts.dart';

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        'Skip',
        style: AppFonts.bodyRegular.copyWith(color: AppColors.disabled),
      ),
    );
  }
}
