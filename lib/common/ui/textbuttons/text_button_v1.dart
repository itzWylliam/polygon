import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// REFERENCE: https://github.com/hosain-mohamed/animated_flow/blob/main/lib/presentation/widgets/get_started_button.dart

class TextButtonV1 extends HookConsumerWidget {
  final Function onTap;
  final Function onAnimationEnd;
  final double componentOpacity;
  final IconData? icon;
  final String text;
  final double width;
  final double height;
  const TextButtonV1({
    super.key,
    this.width = 230,
    this.height = 75,
    required this.text,
    required this.onTap,
    required this.onAnimationEnd,
    required this.componentOpacity,
    this.icon,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 300),
      tween: Tween(begin: 1, end: componentOpacity),
      onEnd: () async {
        onAnimationEnd();
      },
      builder: (_, value, __) => GestureDetector(
        onTap: () {
          // DEBUG
          debugPrint("Button is clicked!");
          onTap();
        },
        child: Opacity(
          opacity: value,
          child: Material(
            borderRadius: BorderRadius.circular(10),
            elevation: 3,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 224, 227, 231),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: min(width, height) / 4,
                    ),
                  ),
                  icon == null
                      ? const SizedBox(
                          width: 0,
                        )
                      : const SizedBox(width: 15),
                  icon == null
                      ? const SizedBox(
                          width: 0,
                        )
                      : Icon(
                          icon,
                          color: Colors.black,
                          size: min(width, height) / 2,
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
