import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AnimatedChecker extends StatefulHookConsumerWidget {
  final double fade_duration;

  AnimatedChecker({
    super.key,
    this.fade_duration = 500,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _animatedCheckerState();
}

class _animatedCheckerState extends ConsumerState<AnimatedChecker>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _animation;
  EdgeInsets paddingAnimationVal = const EdgeInsets.only(top: 22);

  @override
  void initState() {
    // NOTE: Initialization for  animation
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.fade_duration.toInt()),
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
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
        child: AnimatedPadding(
          curve: Curves.easeIn,
          duration: Duration(milliseconds: widget.fade_duration.toInt()),
          padding: paddingAnimationVal,
          child: TweenAnimationBuilder<double>(
            tween: Tween(begin: 0, end: false ? 0 : 1),
            curve: Curves.easeIn,
            duration: Duration(milliseconds: widget.fade_duration.toInt(),),
            builder: ((context, value, child) => Opacity(
                  opacity: value,
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0)
                          .copyWith(bottom: 0),
                      child: Icon(Icons.check_rounded,
                          size: 27,
                          color: _animation.value // _animation.value,
                          ),
                    ),
                  ),
                )),
          ),
        ),
      );
  }

  void hideChecker() {
    setState(() {
      paddingAnimationVal = const EdgeInsets.only(top: 22);
    });
    _animationController.reverse();
  }

  void showChecker() {
    setState(() {
      paddingAnimationVal = const EdgeInsets.only(top: 0);
    });
    _animationController.forward();
  }
}
