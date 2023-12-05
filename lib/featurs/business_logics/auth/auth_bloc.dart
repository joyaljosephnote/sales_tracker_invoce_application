import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sales_tracker/data/repositories/auth_repository/auth_repositories.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final TextEditingController mobileController =
      TextEditingController(text: "+91");
  final TextEditingController otpController1 = TextEditingController();
  final TextEditingController otpController2 = TextEditingController();
  final TextEditingController otpController3 = TextEditingController();
  final TextEditingController otpController4 = TextEditingController();
  final TextEditingController otpController5 = TextEditingController();
  final TextEditingController otpController6 = TextEditingController();
  String verificationId = '';
  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<GoogleSignUpEvent>(googleSignUpEvent);
    on<VerifyPhone>(verifyPhoneEvent);
    on<VerifyOtp>(verifyOtpEvent);
  }

  FutureOr<void> googleSignUpEvent(
      GoogleSignUpEvent event, Emitter<AuthState> emit) async {
    AuthResults authResults = await authRepository.signInWithGoogle();
    authResults == AuthResults.googleSignInVerified ||
            authResults == AuthResults.googleSignInVerifiedNewUser
        ? emit(AuthSuccess(authResults: authResults))
        : emit(AuthError(authResults: authResults));
  }

  Future<void> verifyPhoneEvent(
      VerifyPhone event, Emitter<AuthState> emit) async {
    // ignore: avoid_print
    print('continue pressed => 2');
    // ignore: avoid_print
    print('otp bloc phone -> ${event.phoneNumber}');
    final result = await authRepository.phoneNumberCodeSend(event.phoneNumber);
    // ignore: avoid_print
    print('otpphone bloc => $result');
    if (result != null) {
      verificationId = result;
      emit(OtpSend());
    } else {
      emit(OtpSendError());
    }
    // emit(OtpSend());
  }

  Future<void> verifyOtpEvent(VerifyOtp event, Emitter<AuthState> emit) async {
    final result = await authRepository.otpRecived(verificationId, event.otp);
    if (result) {
      emit(OtpVerified());
    } else {
      emit(OtpVerifiedError());
    }
  }
}
