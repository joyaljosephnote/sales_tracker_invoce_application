import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class BusinessTextFieldNames {
  List<String> BusinessTextFieldName = [
    "Enter your company details",
    "Company Name",
    "GST Number",
    "Street Address",
    "City",
    "State",
    "ZIP Code",
    "Contact Number",
  ];
}

// ignore: must_be_immutable
class PageMainHeadding extends StatelessWidget {
  PageMainHeadding({super.key, required this.textSize});

  double textSize;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: textHeding1(
        data: BusinessTextFieldNames().BusinessTextFieldName[0],
        textSize: textSize,
      ),
    );
  }
}

class BusinessProfileTextStyleAndDecoration {
// ignore: non_constant_identifier_names
  TextStyle ProfileTextStyle(double fontSize) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: FontWeight.bold,
      color: AppTheamColors().primaryColor,
    );
  }

  // ignore: non_constant_identifier_names
  TextStyle ProfileHintTextStyle(double fontSize) {
    return TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: Colors.blueGrey);
  }
}
