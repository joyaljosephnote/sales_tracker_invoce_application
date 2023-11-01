import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_tracker/featurs/business_logics/landing_page_bloc/landing_page_bloc.dart';
import 'package:sales_tracker/featurs/presentation/views/landing_screen/landing_screen.dart';

class RouteGenerator {
  final LandingPageBloc landingPageBloc = LandingPageBloc();
  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
      default:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LandingPageBloc>.value(
            value: landingPageBloc,
            child: const LandingScreen(),
          ),
        );
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
