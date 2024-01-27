import 'package:flutter/material.dart';
import 'package:flutter_advanced_course_app/core/routing/routes.dart';
import 'package:flutter_advanced_course_app/features/login/ui/login_screen.dart';
import 'package:flutter_advanced_course_app/features/onboarding/onboarding.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
