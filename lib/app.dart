import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intravision/features/consent/cubit/medical_consent.dart';
import 'core/localization/app_localizations.dart';
import 'core/localization/supported_locales.dart';
import 'core/routes/route_generator.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/light_theme.dart';
import 'core/theme/dark_theme.dart';
import 'features/auth/presentation/bloc/auth_cubit.dart';
import 'features/onboarding/cubit/onboarding_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(create: (_) => AuthCubit()),
        BlocProvider<MedicalConsentCubit>(create: (_) => MedicalConsentCubit()),
        BlocProvider<OnboardingCubit>(create: (_) => OnboardingCubit()..load()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'IntraVision',

        localeResolutionCallback: SupportedLocales.resolve,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en'), Locale('ar')],

        theme: LightTheme.theme,
        darkTheme: DarkTheme.theme,
        themeMode: ThemeMode.system,

        initialRoute: AppRoutes.splash,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
