import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:polygon/common/navigation/routes.dart';
// import 'package:polygon/common/ui/loading_screen.dart';
import 'package:polygon/common/ui/text_button_v1.dart';
import 'package:polygon/common/utils/input_field_validator.dart';
import 'package:polygon/features/auth/controllers/auth_controller.dart';
import 'package:polygon/common/ui/form_field_v1.dart';
import 'package:polygon/common/utils/specific_field_val.dart';

double _elementOpacity = 1;

// NOTE: for customize loading screen
// bool _loading = false;

// REFERENCE: https://github.com/hosain-mohamed/animated_flow.git

late FormFieldV1 passwordField;
late FormFieldV1 phoneNumField;

class SignInPage extends StatefulHookConsumerWidget {
  const SignInPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => SignInConsumerState();
}

class SignInConsumerState extends ConsumerState<SignInPage> {
  late TextEditingController phoneNumFieldController;
  late TextEditingController passwordFieldController;

  @override
  Widget build(BuildContext context) {
    useEffect(() {
      phoneNumFieldController = TextEditingController();
      passwordFieldController = TextEditingController();
      return null;
    });

    phoneNumField = FormFieldV1(
      formFade: _elementOpacity == 0,
      formFieldController: phoneNumFieldController,
      formHintText: "Phone Number",
      specificFieldValueType: SpecificFieldValueType.phonenumber,
    );

    passwordField = FormFieldV1(
      formFade: _elementOpacity == 0,
      formFieldController: passwordFieldController,
      formHintText: "Password",
      specificFieldValueType: SpecificFieldValueType.password,
    );

    Container welcomeContainer = Container(
      padding: const EdgeInsets.only(left: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Welcome,",
            style: TextStyle(color: Colors.black, fontSize: 35),
          ),
          Text(
            "Sign in to continue",
            style:
                TextStyle(color: Colors.black.withOpacity(0.7), fontSize: 25),
          ),
        ],
      ),
    );

    Row iconWidgetRow = const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.flutter_dash, size: 100, color: Color(0xff21579C)),
      ],
    );

    TextButtonV1 signInButton = TextButtonV1(
      width: 100,
      height: 50,
      text: "Login",
      onTap: () async {
        _elementOpacity = 0;
        showLoading();

        if (await validateInput(SpecificFieldValueType.phonenumber,
                phoneNumField.getPhoneNumber()!) &&
            await passwordFieldController.text != '') {
          manualSignIn(ref).then((value) {
            hideLoading();
          });
        } else {
          hideLoading();
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Sign In Unsuccessful"),
              ),
            );
          }
        }
      },
      onAnimationEnd: () async {},
      componentOpacity: _elementOpacity,
    );

    TextButtonV1 signUpButton = TextButtonV1(
      width: 100,
      height: 50,
      text: "Join Now",
      onTap: () async {
        this.context.pushNamed(PolygonRoute.signup.name);
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => SignUpPage(),
        //   ),
        // );
      },
      onAnimationEnd: () async {},
      componentOpacity: _elementOpacity,
    );

    return LoaderOverlay(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
              // NOTE: solve bottom overflow caused by keyboard pop up
              child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TweenAnimationBuilder(
                  tween: Tween(
                    begin: 1,
                    end: _elementOpacity,
                  ),
                  duration: const Duration(
                    milliseconds: 300,
                  ),
                  builder: (_, value, __) => Opacity(
                    opacity: value.toDouble(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        iconWidgetRow,
                        const SizedBox(height: 25),
                        welcomeContainer,
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      phoneNumField,
                      const SizedBox(
                        height: 25,
                      ),
                      passwordField,
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          signUpButton,
                          const SizedBox(
                            width: 50,
                          ),
                          signInButton,
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Stack(
                          children: [
                            const Divider(
                              thickness: 1,
                              color: Color.fromARGB(255, 214, 212, 212),
                            ),
                            Center(
                              child: Container(
                                width: 25,
                                decoration:
                                    const BoxDecoration(color: Colors.white),
                                child: const Text(
                                  "or",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 162, 161, 161),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        height: 45,
                        child: SignInButton(
                          Buttons.GoogleDark,
                          elevation: 5,
                          onPressed: () {
                            googleLogin(ref);
                          },
                          text: "Sign In With Google",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }

  // COMPLETE: manual sign in
  Future<String?> manualSignIn(WidgetRef ref) async {
    final result = await ref.read(authControllerProvider).manualSignIn(
          username: phoneNumField.getPhoneNumber()!,
          password: passwordFieldController.text,
        );

    if (result != null && result.isSignedIn) {
      safePrint("Manual Sign In Successful!");

      if (context.mounted) {
        context.goNamed(PolygonRoute.home.name);
      }
    } else {
      safePrint("Manual Sign In Failed.");
    }

    // DEBUG: delete later
    if (context.mounted) {
      context.goNamed(PolygonRoute.home.name);
    }

    return null;
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
      if (context.mounted) {
        context.goNamed(PolygonRoute.home.name);
      }
      safePrint("Google Sign In Successful!");
    } else {
      safePrint("Google Sign In Failed.");
    }
  }

  // COMPLETE: amazon sign in
  Future<void> amazonLogin(WidgetRef ref) async {
    final result = await ref.read(authControllerProvider).amazonSignIn();
    if (result != null && result.isSignedIn) {
      if (context.mounted) {
        context.goNamed(PolygonRoute.home.name);
      }
      safePrint("Amazon Sign In Successful!");
    } else {
      safePrint("Amazon Sign In Failed.");
    }
  }

  void showLoading() {
    context.loaderOverlay.show();
    // NOTE: for customize loading screen
    // setState(() {
    //   _loading = true;
    // });
  }

  void hideLoading() {
    context.loaderOverlay.hide();
    // NOTE: for customize loading screen
    // setState(() {
    //   _loading = false;
    // });
  }
}
