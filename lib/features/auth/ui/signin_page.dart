import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/features/auth/controllers/auth_controller.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});
  @override
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
              // COMPLETE: disable keyboard when background is clicked
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: FlutterLogin(
        title: 'Polygon',
        onLogin: (_) async {
          manualSignIn(ref);
        },
        onSignup: (_) async {
          signUp(ref);
        },
        onRecoverPassword: onRecoverPassword,
        loginProviders: <LoginProvider>[
          LoginProvider(
            icon: FontAwesomeIcons.google,
            label: 'Google',
            callback: () async {
              googleLogin(ref);
            },
          ),
          LoginProvider(
            icon: FontAwesomeIcons.amazon,
            label: 'Amazon',
            callback: () async {
              amazonLogin(ref);
            },
          ),
        ],
      ),
    );
  }

// TODO: CHANGE - - - TESTING
  Future<String?> manualSignIn(WidgetRef ref) async {
    String x = "hello world";
    return x;
  }

// TODO: CHANGE - - - TESTING
  Future<String?> onRecoverPassword(text) async {
    String x = "hello world";
    FocusManager.instance.primaryFocus?.unfocus();
    return x;
  }

  // COMPLETE: google sign in
  Future<void> googleLogin(WidgetRef ref) async {
    final result = await ref.read(authControllerProvider).googleSignIn();
    if (result != null && result.isSignedIn) {
      safePrint("Amazon Sign In Successful!");
    } else {
      safePrint("Amazon Sign In Failed.");
    }
  }

  // COMPLETE: amazon sign in
  Future<void> amazonLogin(WidgetRef ref) async {
    final result = await ref.read(authControllerProvider).amazonSignIn();
    if (result != null && result.isSignedIn) {
      safePrint("Amazon Sign In Successful!");
    } else {
      safePrint("Amazon Sign In Failed.");
    }
  }

  //
  Future<void> signUp(WidgetRef) async {

  }
}
