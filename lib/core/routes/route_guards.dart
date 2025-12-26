import 'app_routes.dart';

/// Central place for navigation decisions
/// Guards must be stateless & pure
class RouteGuards {
  RouteGuards._();

  /* =======================
     TEMP USER STATE
     (Later replaced by Cubit / Service)
  ======================= */

  static bool isLoggedIn = false;
  static bool hasCompletedOnboarding = false;
  static bool hasGivenMedicalConsent = false;

  /* =======================
     MAIN GUARD
  ======================= */

  static String? guard(String routeName) {
    // Splash NEVER guarded
    if (routeName == AppRoutes.splash) {
      return null;
    }

    // 1️⃣ Onboarding
    if (!hasCompletedOnboarding &&
        !_onboardingAllowedRoutes.contains(routeName)) {
      return AppRoutes.onboarding;
    }

    // 2️⃣ Authentication
    if (hasCompletedOnboarding &&
        !isLoggedIn &&
        !_authAllowedRoutes.contains(routeName)) {
      return AppRoutes.login;
    }

    // 3️⃣ Medical Consent
    if (isLoggedIn &&
        !hasGivenMedicalConsent &&
        !_consentAllowedRoutes.contains(routeName)) {
      return AppRoutes.medicalConsent;
    }

    return null;
  }

  /* =======================
     ALLOWED ROUTES
  ======================= */

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
