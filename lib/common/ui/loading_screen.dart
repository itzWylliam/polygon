import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:polygon/common/navigation/routes.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key, required this.path});

  final String path;

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double loadingBallSize = 1;
  AlignmentGeometry _alignment = Alignment.center;
  bool stopScaleAnimtion = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 3000), () {
      stopScaleAnimtion = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedAlign(
          duration: Duration(milliseconds: 300),
          alignment: _alignment,
          child: TweenAnimationBuilder<double>(
            // NOTE: Duration of animation
            duration: Duration(milliseconds: 350),
            tween: Tween(begin: 0, end: loadingBallSize),
            onEnd: () {
              if (!stopScaleAnimtion) {
                setState(() {
                  if (loadingBallSize == 1) {
                    loadingBallSize = 1.5;
                  } else {
                    loadingBallSize = 1;
                  }
                });
              } else {
                Future.delayed(Duration(milliseconds: 300), () {
                  context.goNamed(widget.path);
                });
              }
            },
            builder: (_, value, __) => Transform.scale(
              scale: value,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color:
                      !stopScaleAnimtion ? Colors.black.withOpacity(0.8) : null,
                  shape: BoxShape.circle,
                ),
                child: stopScaleAnimtion
                    ? TweenAnimationBuilder<double>(
                        duration: Duration(milliseconds: 600),
                        tween: Tween(begin: 0, end: 1),
                        builder: (_, value, __) => Opacity(
                          opacity: value,
                          child: builderFunction(_, value, __),
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget builderFunction(BuildContext context, double value, Widget? widget) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
    );
  }
}
