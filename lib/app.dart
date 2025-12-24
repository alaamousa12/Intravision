import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/localization/app_localizations.dart';
import 'core/localization/supported_locales.dart';
import 'core/routes/route_generator.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/light_theme.dart';
import 'core/theme/dark_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /* =======================
         App Identity
      ======================== */
      title: 'IntraVision',

      /* =======================
         Localization
      ======================== */
      supportedLocales: SupportedLocales.all,
      localeResolutionCallback: SupportedLocales.resolve,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],

      /* =======================
         Themes
      ======================== */
      theme: LightTheme.theme,
      darkTheme: DarkTheme.theme,
      themeMode: ThemeMode.system,

      /* =======================
         Navigation
      ======================== */
      initialRoute: AppRoutes.splash,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
