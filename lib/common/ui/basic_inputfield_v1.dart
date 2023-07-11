import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BasicInputFieldV1 extends StatefulHookConsumerWidget {
  final TextEditingController textController;
  final String labelText;
  final Function(String?) onTextChanged;
  final double? width;

  const BasicInputFieldV1({
    super.key,
    this.width,
    required this.textController,
    required this.labelText,
    required this.onTextChanged,
  });

  @override
  ConsumerState<BasicInputFieldV1> createState() => _BasicInputFieldV1State();
}

class _BasicInputFieldV1State extends ConsumerState<BasicInputFieldV1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      child: TextField(
        onChanged: widget.onTextChanged,
        controller: widget.textController,
        decoration: InputDecoration(
          floatingLabelStyle: TextStyle(
            backgroundColor: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.center,
          filled: true,
          fillColor: Color.fromARGB(133, 218, 218, 218),
          labelStyle: TextStyle(fontSize: 14),
          labelText: widget.labelText,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            
            borderRadius: BorderRadius.circular(10.0),
            // borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
