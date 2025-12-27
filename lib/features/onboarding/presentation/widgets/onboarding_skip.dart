import 'package:flutter/material.dart';
import 'package:intravision/core/constants/app_colors.dart';
import 'package:intravision/core/constants/app_fonts.dart';
import 'package:intravision/core/localization/app_localizations.dart'; // استيراد ضروري

class OnboardingSkipButton extends StatelessWidget {
  const OnboardingSkipButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // يجب تعريف t هنا أيضاً
    final t = AppLocalizations.of(context);

    return TextButton(
      onPressed: onPressed,
      child: Text(
        t.t('onboarding.skip'),
        style: AppFonts.bodyRegular.copyWith(color: AppColors.disabled),
      ),
    );
  }
}
