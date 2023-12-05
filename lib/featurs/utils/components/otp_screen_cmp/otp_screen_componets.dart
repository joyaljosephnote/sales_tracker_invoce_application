import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sales_tracker/featurs/business_logics/auth/auth_bloc.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/Ink_well_button.dart';

class LockShield extends StatelessWidget {
  const LockShield({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      CupertinoIcons.lock_shield_fill,
      size: sWidth! / 3.5,
      color: AppTheamColors().primaryColor,
    );
  }
}

String otpMessageText = "Please Enter OTP";

class TextHeadingMessage extends StatelessWidget {
  const TextHeadingMessage({
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
        margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 55,
              width: 40,
              child: OTPFormField(
                  controller: context.read<AuthBloc>().otpController1),
            ),
            SizedBox(
              height: 55,
              width: 40,
              child: OTPFormField(
                  controller: context.read<AuthBloc>().otpController2),
            ),
            SizedBox(
              height: 55,
              width: 40,
              child: OTPFormField(
                  controller: context.read<AuthBloc>().otpController3),
            ),
            SizedBox(
              height: 55,
              width: 40,
              child: OTPFormField(
                  controller: context.read<AuthBloc>().otpController4),
            ),
            SizedBox(
              height: 55,
              width: 40,
              child: OTPFormField(
                  controller: context.read<AuthBloc>().otpController5),
            ),
            SizedBox(
              height: 55,
              width: 40,
              child: OTPFormField(
                  controller: context.read<AuthBloc>().otpController6),
            ),
          ],
        ),
      ),
    );
  }
}

class OTPFormField extends StatelessWidget {
  final TextEditingController controller;
  const OTPFormField({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
        // print(controller.text);
      },
      decoration: InputDecoration(
          hintText: "0",
          hintStyle: TextStyle(color: AppTextColors().textSecondaryGrey)),
      onSaved: (pin1) {},
      style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
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
              style: TextStyle(
                  color: AppTextColors().textSecondaryColorBlue,
                  fontWeight: FontWeight.w500),
              text: "Resend",
              recognizer: TapGestureRecognizer()..onTap = () async {}),
        ],
      ),
    );
  }
}

class VerifyButton extends StatelessWidget {
  VerifyButton({super.key, required this.verificationId});

  final String verificationId;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      // listenWhen: (previous, current) => ,
      listener: (context, state) {
        if (state is OtpVerified) {
          Navigator.popAndPushNamed(context, Routes.businessProfileScreen);
        }
      },
      child: Container(
        width: sWidth! / 1.3,
        height: sWidth! / 7,
        decoration: BoxDecoration(
          color: AppButtonColors().buttonColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: InkWellButtonWidget(
          borderRadius: 12,
          data: "VERIFY",
          fontSize: sWidth! / 28,
          onTap: () {
            context.read<AuthBloc>().add(
                  VerifyOtp(
                      otp: context.read<AuthBloc>().otpController1.text +
                          context.read<AuthBloc>().otpController2.text +
                          context.read<AuthBloc>().otpController3.text +
                          context.read<AuthBloc>().otpController4.text +
                          context.read<AuthBloc>().otpController5.text +
                          context.read<AuthBloc>().otpController6.text),
                );
            // Navigator.popAndPushNamed(context, Routes.businessProfileScreen);

            // try {
            //   PhoneAuthCredential credential = PhoneAuthProvider.credential(
            //       verificationId: verificationId,
            //       smsCode: (context.read<AuthBloc>().otpController1.text +
            //               context.read<AuthBloc>().otpController2.text +
            //               context.read<AuthBloc>().otpController3.text +
            //               context.read<AuthBloc>().otpController4.text +
            //               context.read<AuthBloc>().otpController5.text +
            //               context.read<AuthBloc>().otpController6.text)
            //           .trim()
            //           .toString());
            //   FirebaseAuth.instance
            //       .signInWithCredential(credential)
            //       .then((value) {
            //     // emit(OtpVerified());
            //     Navigator.popAndPushNamed(
            //         context, Routes.businessProfileScreen);
            //   });
            // } catch (error) {
            //   // ignore: avoid_print
            //   print(error.toString());
            // }
          },
        ),
      ),
    );
  }
}
