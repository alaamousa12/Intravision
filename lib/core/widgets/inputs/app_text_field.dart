import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import 'app_input.dart';

// class AppTextField extends StatelessWidget {
//   final TextEditingController? controller;
//   final String? hint;
//   final String? label;
//   final String? errorText;
//   final bool isRequired;
//   final TextInputType keyboardType;
//   final bool enabled;
//   final int maxLines;
//   final Widget? prefixIcon;
//   final Widget? suffixIcon;
//   final ValueChanged<String>? onChanged;

//   const AppTextField({
//     super.key,
//     this.controller,
//     this.hint,
//     this.label,
//     this.errorText,
//     this.isRequired = false,
//     this.keyboardType = TextInputType.text,
//     this.enabled = true,
//     this.maxLines = 1,
//     this.prefixIcon,
//     this.suffixIcon,
//     this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AppInput(
//       label: label,
//       errorText: errorText,
//       isRequired: isRequired,
//       child: TextField(
//         controller: controller,
//         keyboardType: keyboardType,
//         enabled: enabled,
//         maxLines: maxLines,
//         onChanged: onChanged,
//         decoration: InputDecoration(
//           hintText: hint,
//           prefixIcon: prefixIcon,
//           suffixIcon: suffixIcon,
//         ),
//       ),
//     );
//   }
// }

class AppTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final String? errorText;
  final bool isRequired;
  final TextInputType keyboardType;
  final bool enabled;
  final int maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String>? onChanged;

  const AppTextField({
    super.key,
    this.controller,
    this.hint,
    this.label,
    this.errorText,
    this.isRequired = false,
    this.keyboardType = TextInputType.text,
    this.enabled = true,
    this.maxLines = 1,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return AppInput(
      label: label,
      errorText: errorText,
      isRequired: isRequired,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        enabled: enabled,
        maxLines: maxLines,
        onChanged: onChanged,
        style: AppFonts.bodyMedium.copyWith(color: AppColors.overlayDark),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppFonts.bodySmall.copyWith(color: AppColors.textTertiary),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor: AppColors.cardLight,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.borderLight),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.borderLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryRed),
          ),
        ),
      ),
    );
  }
}
