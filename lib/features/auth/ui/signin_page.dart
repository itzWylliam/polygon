import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/navigation/routes.dart';
import 'package:polygon/common/ui/loading_screen.dart';
import 'package:polygon/common/ui/text_button_v1.dart';
import 'package:polygon/features/auth/controllers/auth_controller.dart';
import 'package:polygon/common/ui/form_field_v1.dart';
import 'package:polygon/common/utils/specific_field_val.dart';

double _elementOpacity = 1;
bool _loading = false;

// REFERENCE: https://github.com/hosain-mohamed/animated_flow.git

late FormFieldV1 passwordField;
late FormFieldV1 phoneNumField;

class SignInPage extends StatefulHookConsumerWidget {
  SignInPage({super.key});

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
        manualSignIn(ref);
        hideLoading();
      },
      onAnimationEnd: () async {
        showLoading();
      },
      componentOpacity: _elementOpacity,
    );

    TextButtonV1 signUpButton = TextButtonV1(
      width: 100,
      height: 50,
      text: "Join Now",
      onTap: () async {
        context.pushNamed(PolygonRoute.signup.name);
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

    return GestureDetector(
      onTap: () {
        // COMPLETE: disable keyboard when background is clicked
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            // NOTE: solve bottom overflow caused by keyboard pop up
            child: Center(
                child: _loading
                    ? Padding(
                        padding: EdgeInsets.all(8.0),
                        child: LoadingScreen(
                          path: PolygonRoute.home.name,
                        ),
                      )
                    : Padding(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
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
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
          ),
        ),
      ),
    );
  }

// TODO: CHANGE - - - TESTING
  Future<String?> manualSignIn(WidgetRef ref) async {
    final result = await ref.read(authControllerProvider).manualSignIn(
          username: phoneNumField.currentCountryCode()! +
              phoneNumFieldController.text,
          password: passwordFieldController.text,
        );

    if (result != null && result.isSignedIn) {
      safePrint("Manual Sign In Successful!");
    } else {
      safePrint("Manual Sign In Failed.");
    }
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

  // TODO: SIGN UP LOGIC
  Future<void> signUp(WidgetRef) async {}

  void showLoading() {
    setState(() {
      _loading = true;
    });
  }

  void hideLoading() {
    setState(() {
      _loading = false;
    });
  }
}
