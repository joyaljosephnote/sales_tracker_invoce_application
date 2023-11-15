import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sales_tracker/featurs/business_logics/auth/auth_bloc.dart';
import 'package:sales_tracker/featurs/presentation/routes/routs.dart';
import 'package:sales_tracker/featurs/utils/colors/app_colors.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:sales_tracker/featurs/utils/widgets/Ink_well_button.dart';
import 'package:sales_tracker/featurs/utils/widgets/text_style.dart';

// ignore: must_be_immutable
class LockIcon extends StatelessWidget {
  LockIcon({super.key, required this.width});

  double width;

  @override
  Widget build(BuildContext context) {
    return Icon(
      CupertinoIcons.shield_lefthalf_fill,
      size: width,
      color: primaryColor,
    );
  }
}

// ignore: must_be_immutable
class FormFieldHeading extends StatelessWidget {
  FormFieldHeading({super.key, required this.textSize});

  double textSize;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: textHeding1(
        data: 'Enter your mobile number',
        textSize: textSize,
      ),
    );
  }
}

// ignore: must_be_immutable
class MobileNumberField extends StatelessWidget {
  MobileNumberField({super.key, required this.fontSize});

  double fontSize;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        return null;
      },
      initialValue: "+91 ",
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        hintText: "+91",
        hintStyle: TextStyle(fontSize: fontSize, fontWeight: FontWeight.bold),
      ),
      keyboardType: TextInputType.phone,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}

class GoogleSign extends StatelessWidget {
  const GoogleSign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final blocProvider = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) => current is AuthSuccess,
      listener: (context, state) {
        state as AuthSuccess;
        if (AuthResults.googleSignInVerified == state.authResults) {
          Navigator.popAndPushNamed(context, Routes.authScreen);
        } else if (state.authResults ==
            AuthResults.googleSignInVerifiedNewUser) {
          Navigator.popAndPushNamed(context, Routes.businessProfileScreen);
        }
      },
      child: InkWell(
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
        onTap: () {
          blocProvider.add(GoogleSignUpEvent());
        },
        child: SvgPicture.asset(
          'assets/images/google.svg',
          width: 48,
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ContinueButton extends StatelessWidget {
  ContinueButton({super.key, required this.height, required this.width});

  double width;
  double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: InkWellButtonWidget(
        data: "CONTINUE",
        onTap: () {
          Navigator.popAndPushNamed(context, Routes.otpVerificationScreen);
        },
        fontSize: sWidth! / 28,
        borderRadius: 10,
      ),
    );
  }
}

// ignore: must_be_immutable
class BottomTermsAndPolicy extends StatelessWidget {
  BottomTermsAndPolicy({super.key, required this.fontSize});

  double fontSize;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
              text: "By continuing you agree to our  "),
          TextSpan(
              style: const TextStyle(
                  fontSize: 10,
                  color: Colors.blue,
                  fontWeight: FontWeight.w500),
              text: "Terms & Policy",
              recognizer: TapGestureRecognizer()..onTap = () async {}),
        ],
      ),
    );
  }
}
