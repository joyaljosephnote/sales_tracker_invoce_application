// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';

// ignore: must_be_immutable
class InkWellButtonWidget extends StatelessWidget {
  InkWellButtonWidget({
    super.key,
    required this.data,
    required this.onTap,
    required this.fontSize,
    required this.borderRadius,
  });

  String data;
  Function() onTap;
  double fontSize;
  double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        splashColor: buttonSplashColor,
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        child: Center(
          child: Text(
            data,
            style: TextStyle(
              color: textPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
