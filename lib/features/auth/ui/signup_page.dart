import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:polygon/common/ui/form_field_v1.dart';
import 'package:polygon/common/utils/specific_field_val.dart';

late TextEditingController phoneNumSignUpController;
late TextEditingController emailSignUpController;
late TextEditingController passwordSignUpController;

late FormFieldV1 phoneNumSignUpField;
late FormFieldV1 emailSignUpField;
late FormFieldV1 passwordSignUpField;

class SignUpPage extends HookConsumerWidget {
  SignUpPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      phoneNumSignUpController = TextEditingController();
      emailSignUpController = TextEditingController();
      passwordSignUpController = TextEditingController();

      phoneNumSignUpField = FormFieldV1(
        formFade: false,
        formFieldController: phoneNumSignUpController,
        formHintText: "Phone Number",
        specificFieldValueType: SpecificFieldValueType.phonenumber,
      );
      emailSignUpField = FormFieldV1(
        formFade: false,
        formFieldController: emailSignUpController,
        formHintText: "Email",
        specificFieldValueType: SpecificFieldValueType.email,
      );
    });
    final signUpStateKey = GlobalKey<IntroductionScreenState>();

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: IntroductionScreen(
                freeze: true,
                globalBackgroundColor: Colors.white,
                key: signUpStateKey,
                rawPages: [
                  Scaffold(
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
                          child: FormFieldV1(
                            formFade: false,
                            formFieldController: phoneNumSignUpController,
                            formHintText: "Phone Number",
                            specificFieldValueType:
                                SpecificFieldValueType.phonenumber,
                          ),
                        )
                      ],
                    ),
                  ),
                  Scaffold(
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
                          child: FormFieldV1(
                            formFade: false,
                            formFieldController: emailSignUpController,
                            formHintText: "Email",
                            specificFieldValueType:
                                SpecificFieldValueType.email,
                          ),
                        )
                      ],
                    ),
                  )
                ],
                // TODO: BUILD BUTTON FUNCTION
                showBackButton: false,
                showNextButton: false,
                showDoneButton: false,
              )),
        ),
      ),
    );
  }
}
