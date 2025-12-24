import 'package:flutter/material.dart';
import 'package:intravision/core/widgets/shell/main_shell.dart';
import '../routes/app_routes.dart';
import '../routes/route_guards.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final guardedRoute = RouteGuards.guard(settings.name ?? '');

    if (guardedRoute != null) {
      return _page(const SizedBox(), routeName: guardedRoute);
    }

    switch (settings.name) {
      case AppRoutes.splash:
        return _page(const SizedBox());

        // case AppRoutes.onboarding:
        return _page(const SizedBox());

      case AppRoutes.login:
        return _page(const SizedBox());

        // case AppRoutes.medicalConsent:
        return _page(const SizedBox());

      case AppRoutes.main:
        return _page(const MainShell());

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
