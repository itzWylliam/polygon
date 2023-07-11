import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/ui/form_field_v1.dart';
import 'package:polygon/common/utils/specific_field_val.dart';

class SignUpStep extends HookConsumerWidget {
  final Widget? image;
  final List<Widget> children;

  SignUpStep({
    super.key,
    this.image,
    required this.children,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          if (image != null)
            Expanded(
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    elevation: 10,
                    child: image!,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              flex: 2, // occupy 2/3 of available space
            ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: children,
              ),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
