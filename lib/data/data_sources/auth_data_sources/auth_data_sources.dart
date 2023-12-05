import 'dart:math';

import 'package:sales_tracker/data/data_sources/auth_data_sources/firestore_service/username_exist.dart';
import 'package:sales_tracker/data/repositories/auth_repository/auth_repositories.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthDataSource implements AuthRepository {
  String verify = '';
  @override
  Future<void> sendEmailForVerification() async {
    try {
      final auth = FirebaseAuth.instance;
      await auth.currentUser!.sendEmailVerification();
    } catch (e) {
      log(e.toString() as num);
    }
  }

  @override
  Future<AuthResults> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

      await FirebaseAuth.instance.signInWithCredential(credential);
      final exist = await FireStoreService.userIdExist();
      if (exist) {
        return AuthResults.googleSignInVerified;
      }
      return AuthResults.googleSignInVerifiedNewUser;
    } catch (e) {
      return AuthResults.error;
    }
  }

  @override
  Future<String?> phoneNumberCodeSend(String phoneNumber) async {
    print('otp phone ---> $phoneNumber');
    String? verification;
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      timeout: const Duration(seconds: 60),
      verificationCompleted: (PhoneAuthCredential credential) {},
      verificationFailed: (error) {
        print('error in otp send');
        verification = null;
      },
      codeSent: (String verificationId, int? resendToken) {
        print('otp code sebd success');
        verification = verificationId;
        verify = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
    print('otp phonenumberVerification  -> $verification');
    return verification;
  }

  @override
  Future<bool> otpRecived(String verificationId, String otp) async {
    try {
      PhoneAuthCredential credential =
          PhoneAuthProvider.credential(verificationId: verify, smsCode: otp);
      await FirebaseAuth.instance.signInWithCredential(credential);
      return true;
    } catch (error) {
      // ignore: avoid_print
      print(error.toString());
      return false;
    }
  }
}
