import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:polygon/features/auth/controllers/model/signin_entry_model.dart';
import 'package:polygon/features/auth/controllers/model/signup_entry_model.dart';
import 'package:polygon/features/auth/services/auth_service.dart';
import 'package:riverpod/riverpod.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  AuthService authService = ref.read(authServiceProvider);
  return AuthRepository(authService);
});

class AuthRepository {
  AuthRepository(this.authService);

  final AuthService authService;

// TODO: PARAMETERS ****
  Future<SignInResult?> manualSignIn(SignInEntry entry) async {
    return authService.signIn(entry);
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

  Future<SignUpResult?> confirmUser(String username, String confirmationCode) async {
    return authService.confirmUser(username: username, confirmationCode: confirmationCode);
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
