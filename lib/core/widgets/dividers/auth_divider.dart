import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';

class AuthDivider extends StatelessWidget {
  const AuthDivider({super.key, this.text = 'OR'});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            text,
            style: AppFonts.bodySmall.copyWith(
              color: AppColors.disabled,
            ),
          ),
        ),
        const Expanded(child: Divider()),
      ],
    );
  }
}
