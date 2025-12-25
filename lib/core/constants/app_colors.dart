import 'package:flutter/material.dart';

class AppColors {
  AppColors._(); // prevent instantiation

  /* =======================
     Brand Colors
  ======================== */

  static const Color primaryRed = Color(0xFFFE4358);
  static const Color primaryBlue = Color(0xFF1752D3); // Success / Info
  static const Color darkNavy = Color(0xFF061435); // Main dark background

  /* =======================
     Background & Surface
  ======================== */

  static const Color pageBackgroundLight = Color(0xFFF6F8FC);
  static const Color pageBackgroundDark = darkNavy;

  static const Color cardLight = Color(0xFFFFFFFF);
  static const Color cardDark = Color(0xFF0B1A45);

  /* =======================
     Text Colors
  ======================== */

  static const Color textPrimary = Color(0xFFFFFFFF);
  static const Color textSecondary = Color(0xFFD8DAE0);
  static const Color textTertiary = Color(0xFFA3A7B2);

  /* =======================
     Status Colors
  ======================== */

  static const Color success = primaryBlue;
  static const Color error = primaryRed;
  static const Color info = primaryBlue;

  /* =======================
     Borders & Dividers
  ======================== */

  static const Color borderLight = Color(0xFFE5E7EB);
  static const Color borderDark = Color(0xFF1F2A44);

  /* =======================
     Overlays & Disabled
  ======================== */

  static const Color overlayDark = Color.fromARGB(208, 0, 0, 0);
  static const Color disabled = Color(0xFF9CA3AF);
}
