import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_fonts.dart';
import '../constants/app_sizes.dart';

class AppTheme {
  AppTheme._();

  /* =======================
     Text Theme (Global)
  ======================== */

  static const TextTheme textTheme = TextTheme(
    displayLarge: AppFonts.h1,
    displayMedium: AppFonts.h2,
    displaySmall: AppFonts.h3,

    bodyLarge: AppFonts.bodyLarge,
    bodyMedium: AppFonts.bodyRegular,

    labelSmall: AppFonts.caption,
  );

  /* =======================
     AppBar Theme
  ======================== */

  static AppBarTheme appBarTheme(Color backgroundColor) {
    return AppBarTheme(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: AppFonts.h2,
      iconTheme: const IconThemeData(
        color: AppColors.textPrimary,
        size: AppSizes.iconMedium,
      ),
    );
  }

  /* =======================
     Elevated Button Theme
  ======================== */

  static ElevatedButtonThemeData elevatedButtonTheme({
    required Color backgroundColor,
    required Color textColor,
  }) {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        minimumSize: const Size.fromHeight(AppSizes.buttonHeightPrimary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSizes.radiusButton),
        ),
        textStyle: AppFonts.bodyLarge,
        elevation: 0,
      ),
    );
  }

  /* =======================
     Input Decoration Theme
  ======================== */

  static InputDecorationTheme inputDecorationTheme({
    required Color fillColor,
    required Color borderColor,
  }) {
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppSizes.m,
        vertical: AppSizes.s,
      ),
      hintStyle: AppFonts.bodyRegular,
      labelStyle: AppFonts.bodyRegular,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusInput),
        borderSide: BorderSide(color: borderColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusInput),
        borderSide: BorderSide(color: borderColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusInput),
        borderSide: const BorderSide(color: AppColors.primaryBlue),
      ),
    );
  }

  /* =======================
     Card Theme
  ======================== */

  static CardThemeData cardTheme(Color color) {
    return CardThemeData(
      color: color,
      elevation: 0,
      margin: const EdgeInsets.all(AppSizes.s),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.radiusCard),
      ),
    );
  }

  /* =======================
     Divider Theme
  ======================== */

  static DividerThemeData dividerTheme(Color color) {
    return DividerThemeData(color: color, thickness: 1, space: AppSizes.l);
  }
}
