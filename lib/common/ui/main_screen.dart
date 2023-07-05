import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MainScreen extends StatefulHookConsumerWidget {
  MainScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _mainScreenState();
}

class _mainScreenState extends ConsumerState<MainScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            Text("Hello World!"),
          ],
        ),
      ),
    );
  }
}
