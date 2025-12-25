import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  final Locale locale;
  late Map<String, dynamic> _localizedStrings;

  AppLocalizations(this.locale);

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  Future<void> load() async {
    try {
      final jsonString = await rootBundle.loadString(
        'assets/i18n/${locale.languageCode}.json',
      );
      _localizedStrings = json.decode(jsonString);
    } catch (e) {
      debugPrint("Localization Error: $e"); // هيطبع لك السبب في الـ Console
      _localizedStrings = {}; // هيخليها خريطة فاضية بدل ما يرمي Exception
    }
  }

  String t(String key) {
    final keys = key.split('.');
    dynamic value = _localizedStrings;

    for (final k in keys) {
      if (value is Map<String, dynamic> && value.containsKey(k)) {
        value = value[k];
      } else {
        return key; // fallback
      }
    }

    return value is String ? value : key;
  }
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    final localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(_) => false;
}
