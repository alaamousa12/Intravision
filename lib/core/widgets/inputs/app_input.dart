import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';

class AppInput extends StatelessWidget {
  final Widget child;
  final String? label;
  final String? errorText;
  final bool isRequired;

  const AppInput({
    super.key,
    required this.child,
    this.label,
    this.errorText,
    this.isRequired = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null) ...[
          Row(
            children: [
              Text(
                label!,
                style: AppFonts.bodySmall.copyWith(
                  color: AppColors.overlayDark,
                  fontWeight: FontWeight.w500,
                ),
              ),
              if (isRequired)
                const Text(' *', style: TextStyle(color: Colors.red)),
            ],
          ),
          const SizedBox(height: 6),
        ],

        child,
        if (errorText != null) ...[
          const SizedBox(height: 4),
          Text(
            errorText!,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color: Theme.of(context).colorScheme.error,
            ),
          ),
        ],
      ],
    );
  }
}
