import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/app_default_text.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    screenSizeFinder(context);
    Timer(const Duration(seconds: 2), () async {
      Navigator.popAndPushNamed(context, Routes.authScreen);
    });
    return Scaffold(
      backgroundColor: AppTheamColors().primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                appName,
                style: GoogleFonts.ubuntu(
                    fontWeight: FontWeight.bold,
                    fontSize: sWidth! / 12,
                    color: Colors.white),
              ),
              Text(
                appTagName,
                style: GoogleFonts.ubuntu(
                    fontSize: sWidth! / 30, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
