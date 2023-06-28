import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/amplifyconfiguration.dart';
import 'package:polygon/polygon_app.dart';

// TODO: VALIDATE IF AMPLIFY IS CONFIGURED
      // TODO: IF NOT RETURN ERROR PAGE

Future<void> main() async {

  // Configure Amplify Plugins
  _configureAmplify();

  runApp(
    const ProviderScope(
      child: Polygon(),
    ),
  );
}


Future<void> _configureAmplify() async {
  try {
    // Initialize Plugins
    final auth = AmplifyAuthCognito();


    await Amplify.addPlugins([
      // Plugin list
      auth,
    ]);

    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException catch (e) {
    safePrint("Amplify Configuration Error: ${e.message}");
  }
}