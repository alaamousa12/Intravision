import 'app_routes.dart';

class RouteGuards {
  RouteGuards._();

  static bool isLoggedIn = false;
  static bool hasCompletedOnboarding = false;
  static bool hasGivenMedicalConsent = false;

  static String? guard(String routeName) {
    // Splash NEVER guarded
    if (routeName == AppRoutes.splash) {
      return null;
    }

    // 1️⃣ Onboarding must be completed first
    if (!hasCompletedOnboarding &&
        !_onboardingAllowedRoutes.contains(routeName)) {
      return AppRoutes.onboarding;
    }

    // 2️⃣ Authentication required after onboarding
    if (hasCompletedOnboarding &&
        !isLoggedIn &&
        !_authAllowedRoutes.contains(routeName)) {
      return AppRoutes.login;
    }

    // 3️⃣ Medical consent after login
    if (isLoggedIn &&
        !hasGivenMedicalConsent &&
        !_consentAllowedRoutes.contains(routeName)) {
      return AppRoutes.medicalConsent;
    }

    return null;
  }

  static const List<String> _onboardingAllowedRoutes = [
    AppRoutes.splash,
    AppRoutes.onboarding,
  ];

  static const List<String> _authAllowedRoutes = [
    AppRoutes.login,
    AppRoutes.register,
  ];

  static const List<String> _consentAllowedRoutes = [AppRoutes.medicalConsent];
}
