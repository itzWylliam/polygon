import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:polygon/common/ui/form_field_v1.dart';
import 'package:polygon/common/utils/animation/shake_widget.dart';
import 'package:polygon/common/utils/input_field_validator.dart';
import 'package:polygon/common/utils/specific_field_val.dart';
import 'package:polygon/features/auth/controllers/auth_controller.dart';

late TextEditingController phoneNumSignUpController = TextEditingController();
late TextEditingController emailSignUpController = TextEditingController();
late TextEditingController passwordSignUpController = TextEditingController();

// TODO: on submit => store in datastore

FormFieldV1 phoneNumSignUpField = FormFieldV1(
  formFade: false,
  formFieldController: phoneNumSignUpController,
  formHintText: "Phone Number",
  specificFieldValueType: SpecificFieldValueType.phonenumber,
);
FormFieldV1 emailSignUpField = FormFieldV1(
  formFade: false,
  formFieldController: emailSignUpController,
  formHintText: "Email",
  specificFieldValueType: SpecificFieldValueType.email,
);
FormFieldV1 passwordSignUpField = FormFieldV1(
  formFade: false,
  formFieldController: passwordSignUpController,
  formHintText: "Password",
  specificFieldValueType: SpecificFieldValueType.password,
);

class SignUpPage extends HookConsumerWidget {
  int currentSignUpStatePage;

  final _shakeKeyPhoneNum = GlobalKey<ShakeWidgetState>();
  final _shakeKeyEmail = GlobalKey<ShakeWidgetState>();
  final _shakeKeyPassword = GlobalKey<ShakeWidgetState>();
  final signUpStateKey = GlobalKey<IntroductionScreenState>();

  SignUpPage({
    this.currentSignUpStatePage = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var currentSignUpStatePage = useState(this.currentSignUpStatePage);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: IntroductionScreen(
            freeze: true,
            globalBackgroundColor: Colors.black,
            key: signUpStateKey,
            rawPages: [
              // NOTE: Phone number page
              getPhoneNumPage(_shakeKeyPhoneNum),
              // NOTE: email page
              getEmailPage(_shakeKeyEmail),
              // NOTE: password page
              getPasswordPage(_shakeKeyPassword),
            ],
            // TODO: BUILD BUTTON FUNCTION
            onChange: (value) async {
              switch (value) {
                case 1: // NOTE: Phone Number Page
                  if (await validateInput(
                        phoneNumSignUpField.specificFieldValueType!,
                        phoneNumSignUpController.text,
                        countryCode: phoneNumSignUpField.currentCountryCode(
                            phoneNumSignUpField.specificFieldValueType!),
                      ) ==
                      false) {
                    // safePrint("Country Index: ${phoneNumSignUpField.currentCountryIndex(SpecificFieldValueType.phonenumber)}");
                    safePrint(
                        "Country code: ${phoneNumSignUpField.currentCountryCode(SpecificFieldValueType.phonenumber)}");
                    signUpStateKey.currentState?.previous();
                    Future.delayed(
                      Duration(milliseconds: 350),
                    ).then((value) {
                      _shakeKeyPhoneNum.currentState?.shake();
                    });
                  }
                  break;
                case 2: // NOTE: Phone Number Page
                  if (await validateInput(
                        emailSignUpField.specificFieldValueType!,
                        emailSignUpController.text,
                      ) ==
                      false) {
                    signUpStateKey.currentState?.previous();
                    Future.delayed(
                      Duration(milliseconds: 350),
                    ).then((value) {
                      _shakeKeyEmail.currentState?.shake();
                    });
                  }
              }
              currentSignUpStatePage.value = value;
            },
            showBackButton: true,
            back: Text("Back"),
            showNextButton: true,
            next: Text("Next"),
            done: Text("Sign Up"),
            onDone: () async {
              if (await validateInput(
                    phoneNumSignUpField.specificFieldValueType!,
                    phoneNumSignUpController.text,
                    countryCode: phoneNumSignUpField
                        .currentCountryCode(phoneNumSignUpField.specificFieldValueType!),
                  ) ==
                  false) {
                // NOTE: navigate back
                // var i = 2;
                // while (i >= 0) {
                //   signUpStateKey.currentState?.previous();
                //   i--;
                // }
              } else if (await validateInput(
                emailSignUpField.specificFieldValueType!,
                emailSignUpController.text,
              )) {
                // NOTE: navigate back
                // var i = 1;
                // while (i >= 0) {
                //   signUpStateKey.currentState?.previous();
                //   i--;
                // }
              } else if (await validateInput(
                passwordSignUpField.specificFieldValueType!,
                passwordSignUpController.text,
              )) {
              } else {
                context.pop();
              }
            },
            showDoneButton: true,
          ),
        ),
      ),
    );
  }

  // TODO: SIGN UP LOGIC
  Future<void> signUp(WidgetRef ref) async {
    final result = await ref.read(authControllerProvider).signUp(
          email: emailSignUpController.text,
          password: passwordSignUpController.text,
          phoneNum: phoneNumSignUpController.text,
        );

    if (result != null && result.isSignUpComplete) {
      safePrint("Manual Sign Up Successful!");
    } else {
      safePrint("Manual Sign Up Failed.");
    }
  }

  Widget getPhoneNumPage(GlobalKey key) {
    return Scaffold(
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TODO: add Phone Number Icon
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 58.0),
            child: Text(
              "To sign up, \nwe will first need your phone number.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58.0),
            child: ShakeWidget(
              key: key,
              shakeCount: 3,
              shakeOffset: 10,
              shakeDuration: Duration(milliseconds: 400),
              child: phoneNumSignUpField,
            ),
          ),
        ],
      ),
    );
  }

  Widget getEmailPage(GlobalKey key) {
    return Scaffold(
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TODO: add email Icon
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 58.0),
            child: Text(
              "Next, we will first need your email.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58.0),
            child: ShakeWidget(
              key: key,
              shakeCount: 3,
              shakeOffset: 10,
              shakeDuration: Duration(milliseconds: 400),
              child: emailSignUpField,
            ),
          )
        ],
      ),
    );
  }

  Widget getPasswordPage(GlobalKey key) {
    return Scaffold(
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TODO: add email Icon
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 58.0),
            child: Text(
              "Finally, create a password.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58.0),
            child: ShakeWidget(
              key: key,
              shakeCount: 3,
              shakeOffset: 10,
              shakeDuration: Duration(milliseconds: 400),
              child: passwordSignUpField,
            ),
          )
        ],
      ),
    );
  }

}
