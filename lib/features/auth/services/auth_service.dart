import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/features/auth/controllers/model/signin_entry_model.dart';
import 'package:polygon/features/auth/controllers/model/signup_entry_model.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  final authservice = AuthService();
  return authservice;
});

class AuthService {
  AuthService();

  // NOTE: MANUAL SIGN IN
  // TODO: PARAMETER ******
  Future<SignInResult?> signIn(SignInEntry entry) async {
    // SOURCE: AWS AMPLIFY
    try {
      final result = await Amplify.Auth.signIn(
        username: entry.username,
        password: entry.password,
      );
      await _handleSignInResult(result, entry.username);
      return result;
    } on AuthException catch (e) {
      safePrint('Error signing in: ${e.message}');
      return null;
    }
  }

// NOTE: MANUAL SIGN UP
  // SOURCE: AWS AMPLIFY ---- ---- ----
  Future<SignUpResult?> signUp(SignUpEntry entry) async {
    try {

      // TODO: validate duplicated user
      final userAttributes = {
        AuthUserAttributeKey.email: entry.email,
      // additional attributes as needed
      };
      final result = await Amplify.Auth.signUp(
        username: entry.phoneNum,
        password: entry.password,
        options: SignUpOptions(
          userAttributes: userAttributes,
        ),
      );
      await _handleSignUpResult(result);
      return result;
    } on AuthException catch (e) {
      safePrint('User Sign Up Error: ${e.message}');
      return null;
    }
    
  }

// NOTE: MANUAL SIGN UP CONFIRM
  // SOURCE: AWS AMPLIFY ---- ---- ----
  Future<void> confirmSignUp({String }) async {
  // TODO: IMPLEMENT SIGN UP CONFIRMATION 
      // TODO: Validate which input username is associated with
  }

// COMPLETE: AMAZON SIGN IN
  Future<SignInResult?> amazonSignIn() async {
    try {
      final result = await Amplify.Auth.signInWithWebUI(
        provider: AuthProvider.amazon,
        options: const SignInWithWebUIOptions(
          pluginOptions: CognitoSignInWithWebUIPluginOptions(
            isPreferPrivateSession: true,
          ),
        ),
      );

      safePrint("Sign In Result: $result");
      return result;
    } on AuthException catch (e) {
      safePrint("Amazon Auth Error: ${e.message}");
      return null;
    }
  }

// COMPLETE: GOOGLE SIGN IN
  Future<SignInResult?> googleSignIn() async {
    try {
      final result = await Amplify.Auth.signInWithWebUI(
        provider: AuthProvider.google,
        options: const SignInWithWebUIOptions(
          pluginOptions: CognitoSignInWithWebUIPluginOptions(
            isPreferPrivateSession: true,
          ),
        ),
      );

      safePrint("Sign In Result: $result");
      return result;
    } on AuthException catch (e) {
      safePrint("Amazon Auth Error: ${e.message}");
      return null;
    }
  }

// NOTE: SIGN OUT
  Future<SignOutResult> signOut() async {
    final result = await Amplify.Auth.signOut();
    if (result is CognitoCompleteSignOut) {
      safePrint("Sign Out Successful - - -  ${result}");
    } else if (result is CognitoFailedSignOut) {
      safePrint("Sign Out Unsucessful - - - ${result}");
    }
    return result;
  }

// NOTE: USER DATA ACCESS & ALTER
  Future<void> deactivateUser() async {
    // TODO: DEACTIVATE USER
    // TODO: STORE USER INFO BUT PROHIBIT VISIBILITY

    // try {
    //   await Amplify.Auth.deleteUser();
    //   safePrint("Delete User - - - Successful");
    // } on AuthException catch (e) {
    //   safePrint("Delete User Error - - - ${e.message}");
    // }
  }
  Future<bool> deleteUser() async {
    // TODO: check if user has made a transaction or listing then decide if user shall be deleted or deactivated
    // FIXME: ADD LOGIC
    return true;
  }
  Future<AuthUser> getCurrentUser() async {
    final user = await Amplify.Auth.getCurrentUser();
    return user;
  }
  // TODO: GET USER INFORMATION

  // SOURCE: AWS AMPLIFY ---- ---- ----
  Future<void> _handleSignUpResult(SignUpResult result) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        _handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignUpStep.done:
        safePrint('Sign up is complete');
        break;
    }
  }
  // SOURCE: AWS AMPLIFY ---- ---- ----
  void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
    safePrint(
      'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
      'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
    );
  }
  // SOURCE: AWS AMPLIFY ---- ---- ----
  Future<void> _handleSignInResult(SignInResult result, String username) async {
    switch (result.nextStep.signInStep) {
      case AuthSignInStep.confirmSignInWithSmsMfaCode:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        _handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignInStep.confirmSignInWithNewPassword:
        safePrint('Enter a new password to continue signing in');
        break;
      case AuthSignInStep.confirmSignInWithCustomChallenge:
        final parameters = result.nextStep.additionalInfo;
        final prompt = parameters['prompt']!;
        safePrint(prompt);
        break;
      case AuthSignInStep.resetPassword:
        
        safePrint('Invalid Feature: Reset Password');
        break;
        
        // final resetResult = await Amplify.Auth.resetPassword(
        //   username: username,
        // );
        // await _handleResetPasswordResult(resetResult);
        // break;
      case AuthSignInStep.confirmSignUp:
        // Resend the sign up code to the registered device.
        final resendResult = await Amplify.Auth.resendSignUpCode(
          username: username,
        );
        _handleCodeDelivery(resendResult.codeDeliveryDetails);
        break;
      case AuthSignInStep.done:
        safePrint('Sign in is complete');
        break;
    }
  }

  
  Future<void> resetPassword(String username) async {
    try {
      final result = await Amplify.Auth.resetPassword(
        username: username,
      );
      await _handleResetPasswordResult(result);
    } on AuthException catch (e) {
      safePrint('Error resetting password: ${e.message}');
    }
  }

  Future<void> _handleResetPasswordResult(ResetPasswordResult result) async {
    switch (result.nextStep.updateStep) {
      case AuthResetPasswordStep.confirmResetPasswordWithCode:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        _handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthResetPasswordStep.done:
        safePrint('Successfully reset password');
        break;
    }
  }

}
