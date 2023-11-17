part of 'auth_bloc.dart';

class AuthEvent {}

class VerifyEmailEvent extends AuthEvent {}

class GoogleSignUpEvent extends AuthEvent {}

class VerifyPhone extends AuthEvent {
  final String phoneNumber;
  VerifyPhone({required this.phoneNumber});
}

class VerifyOtp extends AuthEvent {
  final String otp;
  VerifyOtp({required this.otp});
}
