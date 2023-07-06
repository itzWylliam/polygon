import 'package:amplify_core/amplify_core.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:phone_number/phone_number.dart';
import 'package:polygon/common/utils/input_field_validator.dart';
import 'package:polygon/common/utils/specific_field_val.dart';

// REFERENCE: https://github.com/hosain-mohamed/animated_flow/blob/main/lib/presentation/widgets/email_field.dart

// NOTE: UNSURE OF THE WIDGET TYPE TO BE IMPLEMENTED
const fade_to_show = 500;
const fade_duration_millsec = 600;

class FormFieldV1 extends StatefulWidget {
  final TextEditingController formFieldController;
  final bool formFade;
  final String formHintText;
  final SpecificFieldValueType? specificFieldValueType;
  final TextInputAction? textInputAction;

  FormFieldV1({
    super.key,
    required this.formFade,
    required this.formFieldController,
    required this.formHintText,
    this.specificFieldValueType,
    this.textInputAction,
  });

  final _formFieldState fieldState = _formFieldState();

  @override
  State<FormFieldV1> createState() => fieldState;

  String? currentCountryCode(SpecificFieldValueType specificFieldValueType) =>
      fieldState.currentCountryCode(specificFieldValueType);
}

class _formFieldState extends State<FormFieldV1> with TickerProviderStateMixin {
  // Animation Parameters
  double bottomAnimationVal = 0;
  double opacityAnimationVal = 0;
  EdgeInsets paddingAnimationVal = const EdgeInsets.only(top: 22);

  late AnimationController _animationController;
  late Animation<Color?> _animation;
  late TextEditingController formFieldController;
  SpecificFieldValueType? specificValueType;
  late String formValueHintText;
  late CountryCode? countryCode = CountryCode();

  FocusNode currentFocus = FocusNode();

  @override
  void initState() {
    specificValueType = widget.specificFieldValueType;
    formValueHintText = widget.formHintText;
    formFieldController = widget.formFieldController;
    if (specificValueType == SpecificFieldValueType.phonenumber) {
      countryCode = CountryCode(code: 'US', dialCode: '+1');
    } else {
      countryCode = null;
    }

    // NOTE: Initialization for  animation
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: fade_duration_millsec),
    );
    final tween = ColorTween(
      begin: Colors.grey.withOpacity(0),
      end: Colors.black,
    );
    _animation = tween.animate(_animationController)
      ..addListener(() {
        setState(() {});
      });

    super.initState();

    // NOTE: check where current focus is on
    currentFocus.addListener(focusListener);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: widget.formFade ? 0 : 1),
          duration: const Duration(
            milliseconds: fade_to_show,
          ),
          builder: (_, value, __) => Opacity(
            opacity: value,
            child: Container(
              margin: specificValueType == SpecificFieldValueType.phonenumber
                  ? const EdgeInsets.only(left: 60)
                  : const EdgeInsets.only(left: 0),
              child: TextFormField(
                textInputAction: widget.textInputAction == null
                    ? TextInputAction.done
                    : widget.textInputAction,
                onTap: () => currentFocus.requestFocus(),
                controller: formFieldController,
                focusNode: currentFocus,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: formValueHintText,
                ),
                keyboardType: keyboardType(),
                onChanged: (value) async {
                  // TODO: add validation text
                  if (value.isNotEmpty) {
                    if (await validateInput(
                      specificValueType!,
                      value,
                      countryCode: currentCountryCode(specificValueType!),
                    )) {
                      setState(() {
                        bottomAnimationVal = 0;
                        opacityAnimationVal = 1;
                        paddingAnimationVal = const EdgeInsets.only(top: 0);
                      });
                      _animationController.forward();
                    } else {
                      _animationController.reverse();
                      setState(() {
                        bottomAnimationVal = 1;
                        opacityAnimationVal = 0;
                        paddingAnimationVal = const EdgeInsets.only(top: 22);
                      });
                    }
                  } else {
                    setState(() {
                      bottomAnimationVal = 0;
                    });
                  }
                },
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomRight,
            child: AnimatedContainer(
              duration: Duration(milliseconds: fade_duration_millsec),
              width: widget.formFade
                  ? 0
                  : (specificValueType == SpecificFieldValueType.phonenumber
                      ? MediaQuery.of(context).size.width - 175
                      : MediaQuery.of(context).size.width - 100),
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: bottomAnimationVal),
                curve: Curves.easeOutQuint,
                duration: Duration(milliseconds: fade_duration_millsec),
                builder: ((context, value, child) => LinearProgressIndicator(
                      value: value,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      color: Colors.black,
                    )),
              ),
            ),
          ),
        ),
        Container(
          width: 75,
          child: specificValueType == SpecificFieldValueType.phonenumber
              ? Container(
                  width: 50,
                  child: CountryCodePicker(
                    alignLeft: true,
                    showCountryOnly: false,
                    showFlag: false,
                    showFlagDialog: true,
                    showOnlyCountryWhenClosed: false,
                    initialSelection: 'US',
                    onChanged: (value) {
                      countryCode = value;
                    },
                    onInit: (value) {
                      countryCode = value;
                    },
                  ),
                )
              : SizedBox(
                  height: 0,
                  width: 0,
                ),
        ),
        // TODO: to be implemented - - - validation decoration
        // Positioned.fill(
        //   child: AnimatedPadding(
        //     curve: Curves.easeIn,
        //     duration: Duration(milliseconds: fade_duration_millsec),
        //     padding: paddingAnimationVal,
        //     child: TweenAnimationBuilder<double>(
        //       tween: Tween(begin: 0, end: widget.formFade ? 0 : 1),
        //       curve: Curves.easeIn,
        //       duration: Duration(milliseconds: fade_duration_millsec),
        //       builder: ((context, value, child) => Opacity(
        //             opacity: value,
        //             child: Align(
        //               alignment: AlignmentDirectional.centerEnd,
        //               child: Padding(
        //                 padding: EdgeInsets.symmetric(horizontal: 12.0)
        //                     .copyWith(bottom: 0),
        //                 child: Icon(Icons.check_rounded,
        //                     size: 27,
        //                     color: _animation.value // _animation.value,
        //                     ),
        //               ),
        //             ),
        //           )),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  // NOTE: check if field is currently focused
  void focusListener() {
    if (currentFocus.hasFocus) {
      setState(() {
        bottomAnimationVal = 1;
      });
    } else {
      setState(() {
        bottomAnimationVal = 0;
      });
    }
  }

  TextInputType? keyboardType() {
    switch (specificValueType) {
      case SpecificFieldValueType.email:
        return TextInputType.emailAddress;
      case SpecificFieldValueType.phonenumber:
        return TextInputType.number;
      default:
        return null;
    }
  }

  // NOTE: maybe using try-catch???......
  String? currentCountryCode(SpecificFieldValueType specificFieldValueType) {
    if (specificFieldValueType == SpecificFieldValueType.phonenumber) {
      return countryCode!.dialCode.toString();
    } else {
      safePrint(
          "Not a phone number input field for getting phone number value.");
      return null;
    }
  }

  String? currentCountryIndex(SpecificFieldValueType specificFieldValueType) {
    if (specificFieldValueType == SpecificFieldValueType.phonenumber) {
      return countryCode!.code.toString();
    } else {
      safePrint(
          "Not a phone number input field for getting phone number value.");
      return null;
    }
  }
}
