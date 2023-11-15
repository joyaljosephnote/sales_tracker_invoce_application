import 'package:sales_tracker/featurs/utils/constants/constants.dart';

abstract class AuthRepository {
  Future<AuthResults> signInWithGoogle();
  Future<void> sendEmailForVerification();
}
