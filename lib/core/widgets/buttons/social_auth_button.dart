import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';

// class SocialAuthButton extends StatelessWidget {
//   const SocialAuthButton({
//     super.key,
//     required this.icon,
//     required this.label,
//     required this.onPressed,
//   });

//   final IconData icon;
//   final String label;
//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 52,
//       width: double.infinity,
//       child: OutlinedButton(
//         onPressed: onPressed,
//         style: OutlinedButton.styleFrom(
//           side: BorderSide(color: AppColors.borderLight),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(12),
//           ),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FaIcon(icon, size: 20, color: AppColors.primaryRed),
//             const SizedBox(width: 12),
//             Text(label, style: AppFonts.bodyMedium),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      width: double.infinity,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: AppColors.cardLight,
          side: BorderSide(color: AppColors.borderLight),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(icon, size: 20, color: AppColors.primaryRed),
            const SizedBox(width: 12),
            Text(
              label,
              style: AppFonts.bodyMedium.copyWith(color: AppColors.overlayDark),
            ),
          ],
        ),
      ),
    );
  }
}
