import 'dart:math';

import 'package:sales_tracker/data/data_sources/auth_data_sources/firestore_service/username_exist.dart';
import 'package:sales_tracker/data/repositories/auth_repository/auth_repositories.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthDataSource implements AuthRepository {
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
}
