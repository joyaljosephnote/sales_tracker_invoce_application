import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';

class BoxDecorationForContainer {
  // ignore: non_constant_identifier_names
  BoxDecoration BoxShadowDecoration() {
    return BoxDecoration(
      color: AppTheamColors().boxContainerColor,
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      boxShadow: [
        BoxShadow(
          color: AppTheamColors().boxShadowColor,
          spreadRadius: 0,
          blurRadius: 11,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }
}
