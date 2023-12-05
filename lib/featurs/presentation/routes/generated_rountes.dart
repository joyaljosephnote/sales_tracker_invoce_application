import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/business_logics/landing_page_bloc/landing_page_bloc.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/bills_screen/invoice_creation.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/business_profile_screen/business_profile_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/inventory_screen/add_product_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/inventory_screen/inventory_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/landing_screen/landing_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/auth_screen/auth_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/otp_screen/otp_form_screen.dart';
import 'package:sales_tracker/featurs/presentation/screens/mobile/splash_screen/splash_screen.dart';

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
      case Routes.otpVerificationScreen:
        if (args is String) {
          return MaterialPageRoute(
              builder: (context) => OtpFormScreen(
                    verificationId: args,
                  ));
        } else {
          return _errorRoute();
        }
      case Routes.businessProfileScreen:
        return MaterialPageRoute(
            builder: (context) => const BusinessProfileScreen());
      case Routes.addNewProductScreen:
        return MaterialPageRoute(
            builder: (context) => const AddNewProductScreen());
      case Routes.inventoryScreen:
        return MaterialPageRoute(builder: (context) => const InventoryScreen());
      case Routes.invoiceCreationScreen:
        return MaterialPageRoute(
            builder: (context) => const InvoiceCreationScreen());
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
