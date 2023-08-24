import 'dart:convert';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/features/auth/controllers/model/signin_entry_model.dart';
import 'package:polygon/features/auth/controllers/model/signup_entry_model.dart';
import 'package:polygon/common/services/user_store.dart';
import 'package:polygon/models/ModelProvider.dart';

// NOTE: exporting
final authServiceProvider = Provider<AuthService>((ref) {
  UserStore authStore = ref.read(authStoreProvider);
  final authservice = AuthService(authStore);
  return authservice;
});

class AuthService {
  AuthService(this.userStore);

  final UserStore userStore;

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
        AuthUserAttributeKey.givenName: entry.givenName,
        AuthUserAttributeKey.familyName: entry.lastName,
        AuthUserAttributeKey.phoneNumber: entry.phoneNum,
        if (entry.nickname != null)
          AuthUserAttributeKey.nickname: entry.nickname!,
        // additional attributes as needed
      };

      // DEBUG
      safePrint(
          "Signing up... \n\tDetails:\n\t\tUsername: ${entry.email}\n\t\tEmail: ${entry.email}\n\t\tPassword: ${entry.password}\n\t\tFirst Name: ${entry.givenName}\n\t\tLast Name: ${entry.lastName}");

      final result = await Amplify.Auth.signUp(
        username: entry.email,
        password: entry.password!,
        options: SignUpOptions(
          userAttributes: userAttributes,
        ),
      );
      await _handleManualSignUpResult(result, entry: entry);
      safePrint("Sign Up Result: $result");
      return result;
    } on AuthException catch (e) {
      safePrint('User Sign Up Error: ${e.message}');
      return null;
    }
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

// NOTE: ERROR WHEN REQUESTING PHONE NUMBER
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

      final user = await getCurrentUser();

      final userAttributes = await Amplify.Auth.fetchUserAttributes();
      SignUpEntry userEntry = SignUpEntry(
          email: userAttributes[6].value,
          phoneNum: '',
          givenName: userAttributes[4].value,
          lastName: userAttributes[5].value,
        );
      if (await userStore.getUser(cognito_ID: user.userId) == null) {
        userStore.saveUser(
          userEntry: userEntry,
          cognitoID: user.userId,
          method: AuthMethod.GOOGLE,
        );
      }

      return result;
    } on AuthException catch (e) {
      safePrint("Google Auth Error: ${e.message}");
      return null;
    }
  }

// NOTE: SIGN OUT
  Future<SignOutResult> signOut() async {
    final result = await Amplify.Auth.signOut();
    if (result is CognitoCompleteSignOut) {
      safePrint("Sign Out Successful - - -  $result");
    } else if (result is CognitoFailedSignOut) {
      safePrint("Sign Out Unsucessful - - - $result");
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
    AuthUser user;

    try {
      user = await Amplify.Auth.getCurrentUser();
      // safePrint("Current User: ${user.toJson()}");
      return user;
    } on SignedOutException {
      safePrint("Current User: None");
      rethrow;
    }
  }
  // TODO: GET USER INFORMATION

  // SOURCE: AWS AMPLIFY ---- ---- ----
  Future<void> _handleManualSignUpResult(SignUpResult result,
      {SignUpEntry? entry}) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        _handleCodeDelivery(codeDeliveryDetails);

        // TODO: save user to database
        final user = await getCurrentUser();
        userStore.saveUser(
          userEntry: entry!,
          cognitoID: user.userId,
          method: AuthMethod.MANUAL,
        );

        break;
      case AuthSignUpStep.done:
        safePrint('Sign up is complete');
        break;
    }
  }

  Future<SignUpResult?> confirmUser({
    required String username,
    required String confirmationCode,
  }) async {
    try {
      final result = await Amplify.Auth.confirmSignUp(
        username: username,
        confirmationCode: confirmationCode,
      );
      // Check if further confirmations are needed or if
      // the sign up is complete.
      await _handleManualSignUpResult(result);
      return result;
    } on AuthException catch (e) {
      safePrint('Error confirming user: ${e.message}');
      return null;
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

      // NOTE: RESETING PASSWORD
      // final resetResult = await Amplify.Auth.resetPassword(
      //   username: username,
      // );
      // await _handleResetPasswordResult(resetResult);
      // break;
      case AuthSignInStep.confirmSignUp:
        // Resend the sign up code to the registered device.
        safePrint("Resending verification code...");
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

  // Future<User> getLocalUser() async {
  //   final user = await userStore.getUser(cognito_ID: await fetchCurrentUserAttributes()[]);
  //   return user;
  // }

  Future<bool> isUserSignedIn() async {
    final result = await Amplify.Auth.fetchAuthSession();
    return result.isSignedIn;
  }

  // NOTE: no provider reference
  Future<List<AuthUserAttribute>> fetchCurrentUserAttributes() async {
    try {
      final result = await Amplify.Auth.fetchUserAttributes();
      for (final element in result) {
        safePrint('key: ${element.userAttributeKey}; value: ${element.value}');
      }
      return result;
    } on AuthException catch (e) {
      safePrint('Error fetching user attributes: ${e.message}');
      return [];
    }
  }

  SignUpEntry parseGoogleUserAttribute(List<AuthUserAttribute> attributes) {
    String email = '';
    String familyName = '';
    String givenName = '';
    String cognitoId = '';
    String phoneNumber = 'null';

    // NOTE: extracting info from google
    for (final element in attributes) {
      switch (element.userAttributeKey.toString()) {
        case 'email':
          email = element.value;
        case 'given_name':
          givenName = element.value;
        case 'family_name':
          familyName = element.value;
        case 'phone_number':
          phoneNumber = element.value;
        default:
          continue;
      }
    }

    return SignUpEntry(
      email: email,
      password: null,
      phoneNum: phoneNumber,
      givenName: givenName,
      lastName: familyName,
    );
  }

  String parseGoogleCognitoID(List<AuthUserAttribute> attributes) {
    String cognitoId = '';

    safePrint("attributes");

    for (final element in attributes) {
      switch (element.userAttributeKey.toString()) {
        case 'identities':
          Map<String, dynamic> idInfo =
              jsonDecode(element.value.substring(1, element.value.length - 1));
          cognitoId = 'google_${idInfo['userId']}';
        default:
          continue;
      }
    }
    return cognitoId;
  }
}
