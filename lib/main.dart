import 'package:amplify_api/amplify_api.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/amplifyconfiguration.dart';
import 'package:polygon/models/ModelProvider.dart';
import 'package:polygon/polygon_app.dart';

// TODO: VALIDATE IF AMPLIFY IS CONFIGURED
      // TODO: IF NOT RETURN ERROR PAGE

Future<void> main() async {
  
  WidgetsFlutterBinding.ensureInitialized();

  // Configure Amplify Plugins
  await _configureAmplify();

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
    final api = AmplifyAPI();
    final datastore = AmplifyDataStore(modelProvider: ModelProvider.instance);

    await Amplify.addPlugins([
      // Plugin list
      auth,
      api,
      datastore,
    ]);

    await Amplify.configure(amplifyconfig);
  } on AmplifyAlreadyConfiguredException catch (e) {
    safePrint("Amplify Configuration Error: ${e.message}");
  }
}
