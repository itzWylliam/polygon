import 'package:flutter/material.dart';
import 'package:polygon/features/auth/ui/signin_page.dart';

class Polygon extends StatelessWidget {
  const Polygon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignInPage(),
    );

    // return MaterialApp.router(
    //   // TODO: Configure router 
    //   routerConfig: null,
    // );
  }
}