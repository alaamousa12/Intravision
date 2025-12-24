import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_fonts.dart';
import '../../constants/app_colors.dart';

class SecondaryButton extends StatelessWidget {
  final String title;
  final VoidCallback? onPressed;
  final Widget? leading;

  const SecondaryButton({
    super.key,
    required this.title,
    this.onPressed,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSizes.buttonHeightPrimary,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(
            color: AppColors.primaryRed,
            width: 1.5,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.radiusButton),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leading != null) ...[
              leading!,
              const SizedBox(width: AppSizes.s),
            ],
            Text(
              title,
              style: AppFonts.bodyLarge.copyWith(
                color: AppColors.primaryRed,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
