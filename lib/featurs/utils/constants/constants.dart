import 'package:flutter/material.dart';

const text9 = 9.0;
const text12 = 12.0;

//find Screen Size

double? sHeight;
double? sWidth;

void screenSizeFinder(BuildContext context) {
  final size = MediaQuery.of(context).size;
  sHeight = size.height;
  sWidth = size.width;
}

enum AuthResults {
  initial,
  loginSuccess,
  signUpSuccess,
  emailAlreadyExists,
  invalidEmail,
  weakPassword,
  userNotFound,
  wrongPassword,
  error,
  verified,
  googleSignInVerified,
  googleSignInVerifiedNewUser,
  passwordReset
}
