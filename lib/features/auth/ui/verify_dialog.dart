import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:polygon/common/navigation/routes.dart';
import 'package:polygon/common/ui/basic_inputfield_v1.dart';
import 'package:polygon/common/ui/text_button_v1.dart';
import 'package:polygon/common/utils/specific_field_val.dart';
import 'package:polygon/features/auth/controllers/auth_controller.dart';

// TODO: pass in email as username ->
// TODO: how does dialog pop but still notify signup page that verification succeeds?

class VerifyDialog extends HookConsumerWidget {
  final TextEditingController verifyController;
  late BasicInputFieldV1 verifyField;
  late ValueNotifier<String> currentVerifyCode;
  final String username;
  final Function(String code, BuildContext context) onConfirm;

  VerifyDialog({
    super.key,
    required this.verifyController,
    required this.username,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    currentVerifyCode = useState('');
    useEffect(() {
      verifyField = BasicInputFieldV1(
        textController: verifyController,
        specificFieldValueType: SpecificFieldValueType.number,
        labelText: "Verification Code",
        onTextChanged: (value) {},
      );
      return null;
    });

    return LoaderOverlay(
      child: Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 5,
        backgroundColor: Colors.white,
        child: SizedBox(
          width: 450,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Confirm Sign Up',
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Text(
                  'Lastly provide us the verification we sent you through text. Check your text message for verification code',
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50.0,
                ),
                child: verifyField,
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButtonV1(
                    width: 80,
                    height: 40,
                    text: "Verify",
                    onTap: () {
                      onConfirm(verifyController.text, context);
                    },
                    onAnimationEnd: () {},
                    componentOpacity: 1,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
