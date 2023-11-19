import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';

class BoxDecorationForContainer {
  // ignore: non_constant_identifier_names
  BoxDecoration BoxShadowDecoration() {
    return BoxDecoration(
      color: AppTheamColors().scaffoldBackgroundColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(255, 28, 11, 127),
          spreadRadius: 0,
          blurRadius: 6,
          offset: Offset(0, 3),
        ),
      ],
    );
  }
}
