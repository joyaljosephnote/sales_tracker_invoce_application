import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/business_logics/landing_page_bloc/landing_page_bloc.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/presentation/screens/landing_screen/landing_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/auth_screen/auth_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/splash_screen/splash_screen.dart';

class RouteGenerator {
  final LandingPageBloc landingPageBloc = LandingPageBloc();
  Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.initial:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.authScreen:
        return MaterialPageRoute(builder: (context) => const AuthScreen());
      case Routes.landingScreen:
        return MaterialPageRoute(builder: (context) => const LandingScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error'),
          ),
          body: const Center(
            child: Text('Error'),
          ),
        );
      },
    );
  }
}
