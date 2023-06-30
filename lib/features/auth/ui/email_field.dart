import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// REFERENCE: https://github.com/hosain-mohamed/animated_flow/blob/main/lib/presentation/widgets/email_field.dart

// NOTE: UNSURE OF THE WIDGET TYPE TO BE IMPLEMENTED

const fade_duration_millsec = 300;

class EmailField extends StatefulWidget {
  final TextEditingController emailFieldController;
  final bool emailFade;

  const EmailField(
      {super.key, required this.emailFade, required this.emailFieldController});

  @override
  State<EmailField> createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField>
    with SingleTickerProviderStateMixin {
  // Animation Parameters
  double bottomAnimationVal = 0;
  double opacityAnimationVal = 0;
  EdgeInsets paddingAnimationVal = const EdgeInsets.only(top: 22);

  late AnimationController _animationController;
  late Animation<Color?> _animation;
  late TextEditingController emailFieldController;

  FocusNode currentFocus = FocusNode();

  @override
  void initState() {
    emailFieldController = widget.emailFieldController;

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
          tween: Tween(begin: 0, end: widget.emailFade ? 0 : 1),
          duration: const Duration(
            milliseconds: fade_duration_millsec,
          ),
          builder: (_, value, __) => Opacity(
                  opacity: value,
                  child: TextFormField(
                    controller: emailFieldController,
                    focusNode: currentFocus,
                    decoration: InputDecoration(hintText: "Email"),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) async {
                      if (value.isNotEmpty) {
                      if (isValidEmail(value)) {
                        setState(() {
                          bottomAnimationVal = 0;
                          opacityAnimationVal = 1;
                          paddingAnimationVal = EdgeInsets.only(top: 0);
                        });
                        _animationController.forward();
                      } else {
                        _animationController.reverse();
                        setState(() {
                          bottomAnimationVal = 1;
                          opacityAnimationVal = 0;
                          paddingAnimationVal = EdgeInsets.only(top: 22);
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

  bool isValidEmail(String email) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }
}
