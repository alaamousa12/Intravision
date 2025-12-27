import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_fonts.dart';
import 'app_input.dart';

// class AppPasswordField extends StatefulWidget {
//   final TextEditingController? controller;
//   final String? hint;
//   final String? label;
//   final String? errorText;
//   final bool isRequired;
//   final ValueChanged<String>? onChanged;

//   const AppPasswordField({
//     super.key,
//     this.controller,
//     this.hint,
//     this.label,
//     this.errorText,
//     this.isRequired = false,
//     this.onChanged,
//   });

//   @override
//   State<AppPasswordField> createState() => _AppPasswordFieldState();
// }

// class _AppPasswordFieldState extends State<AppPasswordField> {
//   bool _obscure = true;

//   @override
//   Widget build(BuildContext context) {
//     return AppInput(
//       label: widget.label,
//       errorText: widget.errorText,
//       isRequired: widget.isRequired,
//       child: TextField(
//         controller: widget.controller,
//         obscureText: _obscure,
//         onChanged: widget.onChanged,
//         decoration: InputDecoration(
//           hintText: widget.hint,
//           suffixIcon: IconButton(
//             icon: Icon(
//               _obscure ? Icons.visibility_off : Icons.visibility,
//             ),
//             onPressed: () {
//               setState(() {
//                 _obscure = !_obscure;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

class AppPasswordField extends StatefulWidget {
  final TextEditingController? controller;
  final String? hint;
  final String? label;
  final String? errorText;
  final bool isRequired;
  final ValueChanged<String>? onChanged;

  const AppPasswordField({
    super.key,
    this.controller,
    this.hint,
    this.label,
    this.errorText,
    this.isRequired = false,
    this.onChanged,
  });

  @override
  State<AppPasswordField> createState() => _AppPasswordFieldState();
}

class _AppPasswordFieldState extends State<AppPasswordField> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return AppInput(
      label: widget.label,
      errorText: widget.errorText,
      isRequired: widget.isRequired,
      child: TextField(
        controller: widget.controller,
        obscureText: _obscure,
        onChanged: widget.onChanged,
        style: AppFonts.bodyMedium.copyWith(color: AppColors.overlayDark),
        decoration: InputDecoration(
          hintText: widget.hint,
          hintStyle: AppFonts.bodySmall.copyWith(color: AppColors.textTertiary),
          filled: true,
          fillColor: AppColors.cardLight,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.borderLight),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: AppColors.primaryRed),
          ),
          suffixIcon: IconButton(
            icon: Icon(
              _obscure ? Icons.visibility_off : Icons.visibility,
              color: AppColors.primaryRed,
            ),
            onPressed: () {
              setState(() {
                _obscure = !_obscure;
              });
            },
          ),
        ),
      ),
    );
  }
}
