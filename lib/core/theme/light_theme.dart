import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'app_theme.dart';

class LightTheme {
  LightTheme._();

  static final ThemeData theme = ThemeData(
    useMaterial3: true,

    brightness: Brightness.light,

    scaffoldBackgroundColor: AppColors.pageBackgroundLight,

    /* =======================
       Colors
    ======================== */
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryRed,
      secondary: AppColors.primaryBlue,
      background: AppColors.pageBackgroundLight,
      surface: AppColors.cardLight,
      error: AppColors.error,
      onPrimary: AppColors.textPrimary,
      onSecondary: AppColors.textPrimary,
      onBackground: AppColors.textPrimary,
      onSurface: AppColors.textPrimary,
      onError: AppColors.textPrimary,
    ),

    /* =======================
       Typography
    ======================== */
    textTheme: AppTheme.textTheme,

    /* =======================
       AppBar
    ======================== */
    appBarTheme: AppTheme.appBarTheme(
      AppColors.pageBackgroundLight,
    ),

    /* =======================
       Buttons
    ======================== */
    elevatedButtonTheme: AppTheme.elevatedButtonTheme(
      backgroundColor: AppColors.primaryRed,
      textColor: AppColors.textPrimary,
    ),

    /* =======================
       Inputs
    ======================== */
    inputDecorationTheme: AppTheme.inputDecorationTheme(
      fillColor: AppColors.cardLight,
      borderColor: AppColors.borderLight,
    ),

    /* =======================
       Cards
    ======================== */
    cardTheme: AppTheme.cardTheme(
      AppColors.cardLight,
    ),

    /* =======================
       Dividers
    ======================== */
    dividerTheme: AppTheme.dividerTheme(
      AppColors.borderLight,
    ),
  );
}


