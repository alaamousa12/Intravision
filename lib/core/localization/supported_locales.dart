import 'package:flutter/material.dart';
import 'dart:ui';

class SupportedLocales {
  SupportedLocales._();

  /// Supported locales
  static const List<Locale> all = [Locale('en'), Locale('ar')];

  /// Default locale
  static const Locale fallback = Locale('en');

  /// RTL check
  static bool isRTL(Locale locale) {
    return locale.languageCode == 'ar';
  }

  /// Locale resolver
  static Locale resolve(
    Locale? deviceLocale,
    Iterable<Locale> supportedLocales,
  ) {
    if (deviceLocale == null) return fallback;

    for (final locale in supportedLocales) {
      if (locale.languageCode == deviceLocale.languageCode) {
        return locale;
      }
    }

    return fallback;
  }
}
