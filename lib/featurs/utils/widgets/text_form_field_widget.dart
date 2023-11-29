import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';

// ignore: must_be_immutable
class TextFormFeildWidget extends StatelessWidget {
  TextFormFeildWidget(
      {super.key,
      required this.validator,
      required this.hintText,
      required this.controller,
      required this.textCapitalization,
      required this.keyboardType});

  String hintText;
  String? Function(String?)? validator;
  TextEditingController? controller;
  TextCapitalization textCapitalization;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: textCapitalization,
      controller: controller,
      validator: validator,
      cursorColor: AppTextColors().textSecondaryColor,
      style: TextStyle(color: AppTextColors().textSecondaryColor),
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: AppTextColors().textSecondaryGrey),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        filled: true,
        fillColor: AppTheamColors().textFeildColor,
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
