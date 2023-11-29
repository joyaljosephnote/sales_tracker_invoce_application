import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';

// ignore: must_be_immutable
class FlotingButtonWidget extends StatelessWidget {
  FlotingButtonWidget(
      {super.key,
      required this.buttonName,
      required this.icon,
      required this.onPresed});

  IconData icon;
  String buttonName;
  Function()? onPresed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: AppButtonColors().buttonColor,
      onPressed: onPresed,
      // heroTag: 'uniqueTag',
      label: Row(
        children: [
          Icon(
            icon,
            color: AppTextColors().textPrimaryColor,
          ),
          Text(
            buttonName,
            style: TextStyle(color: AppTextColors().textPrimaryColor),
          ),
        ],
      ),
    );
  }
}
