import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/utils/enum_constants/specific_field_val.dart';

class BasicInputFieldV1 extends StatefulHookConsumerWidget {
  final TextEditingController textController;
  final String labelText;
  final Function(String?) onTextChanged;
  final SpecificFieldValueType? specificFieldValueType;
  final double? width;

  const BasicInputFieldV1({
    super.key,
    this.width,
    required this.textController,
    required this.labelText,
    this.specificFieldValueType,
    required this.onTextChanged,
  });

  @override
  ConsumerState<BasicInputFieldV1> createState() => _BasicInputFieldV1State();
}

class _BasicInputFieldV1State extends ConsumerState<BasicInputFieldV1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextField(
        keyboardType: keyboardType(),
        onChanged: widget.onTextChanged,
        controller: widget.textController,
        decoration: InputDecoration(
          floatingLabelStyle: const TextStyle(
            backgroundColor: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          floatingLabelAlignment: FloatingLabelAlignment.center,
          filled: true,
          fillColor: const Color.fromARGB(133, 218, 218, 218),
          labelStyle: const TextStyle(fontSize: 14),
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

  TextInputType? keyboardType() {
    switch (widget.specificFieldValueType) {
      case SpecificFieldValueType.email:
        return TextInputType.emailAddress;
      case SpecificFieldValueType.phonenumber && SpecificFieldValueType.number:
        return TextInputType.number;
      default:
        return null;
    }
  }
}
