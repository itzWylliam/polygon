import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:flutter/material.dart';
import 'package:polygon/features/auth/controllers/model/signup_entry_model.dart';
import 'package:polygon/features/auth/services/auth_service.dart';
import 'package:riverpod/riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  AuthService authService = ref.read(AuthServiceProvider);
  return AuthRepository(authService);
});

class AuthRepository {
  AuthRepository(this.authService);

  final AuthService authService;

// TODO: PARAMETERS ****
  Future<SignInResult?> manualSignIn() async {
    return authService.signIn();
  }

  Future<SignInResult?> amazonSignIn() async {
    return authService.amazonSignIn();
  }

  Future<SignInResult?> googleSignIn() async {
    return authService.googleSignIn();
  }

  Future<SignUpResult?> manualSignUp(SignUpEntry entry) async {
    return authService.signUp(entry);
  }

  Future<SignOutResult> signOut() async {
    return authService.signOut();
  }

  // TODO: Return Validation result
  Future<void> deactivateUser() async {
    await authService.deactivateUser();
  }

  Future<AuthUser> getCurrentUser() async {
    return authService.getCurrentUser();
  }

  Future<bool> deleteUser() async {
    return authService.deleteUser();
  }
}
