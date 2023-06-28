import 'package:flutter/material.dart';

class SignUpEntry {

  SignUpEntry({
    required this.email,
    required this.password,
    required this.phoneNum,
    this.context,
  });

  final String email;
  final String password;
  final String phoneNum;
  BuildContext? context;
}