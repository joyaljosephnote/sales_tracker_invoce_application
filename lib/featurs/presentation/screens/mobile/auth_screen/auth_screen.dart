import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/utils/components/auth_screen_cmp/auth_screen_componets.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              heightSizedBox(heightValue: sWidth! / 5),
              LockIcon(width: sWidth! / 3.5),
              heightSizedBox(heightValue: sWidth! / 20),
              Padding(
                padding:
                    EdgeInsets.only(left: sWidth! / 10, right: sWidth! / 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    heightSizedBox(heightValue: 40.0),
                    FormFieldHeading(textSize: sWidth! / 18),
                    heightSizedBox(heightValue: 22.0),
                    MobileNumberField(fontSize: 22),
                    heightSizedBox(heightValue: 40.0),
                    ContinueButton(height: sWidth! / 7, width: sWidth! / 1.3),
                    heightSizedBox(heightValue: 40.0),
                    textHeding2(data: "Or", textSize: 12),
                    heightSizedBox(heightValue: 40.0),
                    const GoogleSign(),
                    heightSizedBox(heightValue: 35.0),
                    BottomTermsAndPolicy(
                      fontSize: 12,
                    ),
                    heightSizedBox(heightValue: 35.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
