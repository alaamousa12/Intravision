// import 'package:flutter/material.dart';
// import 'package:intravision/core/widgets/shell/main_shell.dart';
// import '../../features/onboarding/presentation/screens/onboarding_screen.dart';
// import '../routes/app_routes.dart';
// import '../routes/route_guards.dart';

// class RouteGenerator {
//   static Route<dynamic> generateRoute(RouteSettings settings) {
//     final guardedRoute = RouteGuards.guard(settings.name ?? '');

//     if (guardedRoute != null) {
//       return _page(const SizedBox(), routeName: guardedRoute);
//     }

//     switch (settings.name) {
//       case AppRoutes.splash:
//         return _page(const SizedBox());

//       case AppRoutes.onboarding:
//         return _page(const OnboardingScreen());

//       case AppRoutes.login:
//         return _page(const Scaffold(body: Center(child: Text('Login Page'))));

//       case AppRoutes.medicalConsent:
//         return _page(const SizedBox());

//       case AppRoutes.main:
//         return _page(const MainShell());

//       default:
//         return _errorRoute();
//     }
//   }

//   static MaterialPageRoute _page(Widget child, {String? routeName}) {
//     return MaterialPageRoute(
//       settings: RouteSettings(name: routeName),
//       builder: (_) => child,
//     );
//   }

//   static Route<dynamic> _errorRoute() {
//     return MaterialPageRoute(
//       builder: (_) =>
//           const Scaffold(body: Center(child: Text('Route not found'))),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:intravision/core/routes/app_routes.dart';
import 'package:intravision/core/routes/route_guards.dart';
import 'package:intravision/core/widgets/shell/main_shell.dart';

// استيراد الشاشات (تأكد من صحة مسارات الـ import عندك)
import 'package:intravision/features/splash/presentation/screens/splash_screen.dart';
import 'package:intravision/features/onboarding/presentation/screens/onboarding_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // 1. تشغيل الحماية (Guard) أولاً لمعرفة الوجهة الصحيحة
    final String? guardedRoute = RouteGuards.guard(settings.name ?? '');

    // إذا الـ Guard قرر يبعت المستخدم لمكان تاني (زي الـ onboarding)
    final String routeToBuild =
        guardedRoute ?? (settings.name ?? AppRoutes.splash);

    switch (routeToBuild) {
      case AppRoutes.splash:
        return _page(const SplashScreen(), routeName: AppRoutes.splash);

      case AppRoutes.onboarding:
        return _page(const OnboardingScreen(), routeName: AppRoutes.onboarding);

      case AppRoutes.login:
        // مؤقتاً لحين إنشاء صفحة الـ Login
        return _page(
          const Scaffold(body: Center(child: Text('Login Screen'))),
          routeName: AppRoutes.login,
        );

      case AppRoutes.medicalConsent:
        return _page(
          const Scaffold(body: Center(child: Text('Medical Consent Screen'))),
          routeName: AppRoutes.medicalConsent,
        );

      case AppRoutes.main:
        return _page(const MainShell(), routeName: AppRoutes.main);

      default:
        return _errorRoute();
    }
  }

  static MaterialPageRoute _page(Widget child, {String? routeName}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => child,
    );
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) =>
          const Scaffold(body: Center(child: Text('Route not found'))),
    );
  }
}
