import 'package:flutter/material.dart';

class SignUpEntry {

  SignUpEntry({
    required this.email,
    this.password,
    required this.phoneNum,
    required this.givenName,
    required this.lastName,
    this.nickname,
    this.context,
  });

  final String email;
  final String givenName;
  final String lastName;
  String? password;
  final String phoneNum;
  String? nickname;
  BuildContext? context;
}