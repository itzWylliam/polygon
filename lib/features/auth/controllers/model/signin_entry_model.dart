import 'package:flutter/material.dart';

class SignInEntry {
  SignInEntry({
    required this.username,
    required this.password,
    this.context,
  });

  final String username;
  final String password;
  BuildContext? context;
}
