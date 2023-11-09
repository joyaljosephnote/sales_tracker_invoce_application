import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/Ink_well_button.dart';

class TextHeadingMessege extends StatelessWidget {
  const TextHeadingMessege({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Your One Time Password (OTP) has been sent via SMS to your registered mobile number',
      textAlign: TextAlign.center,
    );
  }
}

class OTPForm extends StatelessWidget {
  const OTPForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(
                    hintText: "0", hintStyle: TextStyle(color: primaryColor)),
                onSaved: (pin1) {},
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextFormField(
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(
                    hintText: "0", hintStyle: TextStyle(color: primaryColor)),
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextField(
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(
                    hintText: "0", hintStyle: TextStyle(color: primaryColor)),
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            SizedBox(
              height: 68,
              width: 64,
              child: TextField(
                onChanged: (value) {
                  if (value.length == 1) {
                    FocusScope.of(context).nextFocus();
                  }
                },
                decoration: const InputDecoration(
                    hintText: "0", hintStyle: TextStyle(color: primaryColor)),
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(1),
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResendOTP extends StatelessWidget {
  const ResendOTP({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
              style: TextStyle(
                color: Colors.black,
              ),
              text: "Did not receive OTP? "),
          TextSpan(
              style: const TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.w500),
              text: "Resend",
              recognizer: TapGestureRecognizer()..onTap = () async {}),
        ],
      ),
    );
  }
}

class VerifyButton extends StatelessWidget {
  const VerifyButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sWidth! / 1.3,
      height: sWidth! / 7,
      decoration: const BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWellButtonWidget(
        borderRadius: 12,
        data: "VERIFY",
        fontSize: sWidth! / 28,
        onTap: () {},
      ),
    );
  }
}
