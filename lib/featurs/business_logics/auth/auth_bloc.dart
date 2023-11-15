import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:sales_tracker/data/repositories/auth_repository/auth_repositories.dart';
import 'package:sales_tracker/featurs/utils/constants/constants.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(AuthInitial()) {
    on<GoogleSignUpEvent>(googleSignUpEvent);
  }

  FutureOr<void> googleSignUpEvent(
      GoogleSignUpEvent event, Emitter<AuthState> emit) async {
    AuthResults authResults = await authRepository.signInWithGoogle();
    authResults == AuthResults.googleSignInVerified ||
            authResults == AuthResults.googleSignInVerifiedNewUser
        ? emit(AuthSuccess(authResults: authResults))
        : emit(AuthError(authResults: authResults));
  }
}
