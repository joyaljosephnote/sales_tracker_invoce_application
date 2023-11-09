import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/components/otp_screen_cmp/otp_screen_componets.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/sized_box_widgets.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

class OtpFormScreen extends StatelessWidget {
  const OtpFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () =>
              Navigator.popAndPushNamed(context, Routes.authScreen),
          icon: const Icon(
            CupertinoIcons.back,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            child: SizedBox(
              width: sWidth! / 1.1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  heightSizedBox(heightValue: 25.0),
                  const LockShield(),
                  heightSizedBox(heightValue: 25.0),
                  textHeding1(data: otpMessageText, textSize: 18),
                  heightSizedBox(heightValue: 25.0),
                  const SizedBox(
                    width: 350,
                    child: TextHeadingMessage(),
                  ),
                  heightSizedBox(heightValue: 23.0),
                  const OTPForm(),
                  heightSizedBox(heightValue: 23.0),
                  const ResendOTP(),
                  heightSizedBox(heightValue: 25.0),
                  const VerifyButton(),
                  heightSizedBox(heightValue: 25.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
