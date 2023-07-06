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

late TextEditingController phoneNumSignUpController = TextEditingController();
late TextEditingController emailSignUpController = TextEditingController();
late TextEditingController passwordSignUpController = TextEditingController();

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
late FormFieldV1 passwordSignUpField;

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
                case 0: // NOTE: Phone Number Page
                  if (await validateInput(
                    SpecificFieldValueType.phonenumber,
                    phoneNumSignUpController.text,
                    countryCode: phoneNumSignUpField.currentCountryCode(SpecificFieldValueType.phonenumber),
                  ) == false) {
                    _shakeKeyPhoneNum.currentState?.shake();
                  }
              }
              currentSignUpStatePage.value = value;
            },
            showBackButton: true,
            back: Text("Back"),
            showNextButton: true,
            next: Text("Next"),
            done: Text("Sign Up"),
            onDone: () {},
            showDoneButton: true,
          ),
        ),
      ),
    );
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
              child: FormFieldV1(
                formFade: false,
                formFieldController: phoneNumSignUpController,
                formHintText: "Phone Number",
                specificFieldValueType: SpecificFieldValueType.phonenumber,
              ),
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
              child: FormFieldV1(
                formFade: false,
                formFieldController: emailSignUpController,
                formHintText: "Email",
                specificFieldValueType: SpecificFieldValueType.email,
              ),
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
              child: FormFieldV1(
                formFade: false,
                formFieldController: passwordSignUpController,
                formHintText: "Password",
                specificFieldValueType: SpecificFieldValueType.password,
              ),
            ),
          )
        ],
      ),
    );
  }
}
