import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import 'app_theme.dart';

class DarkTheme {
  DarkTheme._();

  static final ThemeData theme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,

    scaffoldBackgroundColor: AppColors.pageBackgroundDark,

    /* =======================
       Colors
    ======================== */
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryRed,
      secondary: AppColors.primaryBlue,
      background: AppColors.pageBackgroundDark,
      surface: AppColors.cardDark,
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
      AppColors.pageBackgroundDark,
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
      fillColor: AppColors.cardDark,
      borderColor: AppColors.borderDark,
    ),

    /* =======================
       Cards
    ======================== */
    cardTheme: AppTheme.cardTheme(
      AppColors.cardDark,
    ),

    /* =======================
       Dividers
    ======================== */
    dividerTheme: AppTheme.dividerTheme(
      AppColors.borderDark,
    ),
  );
}
