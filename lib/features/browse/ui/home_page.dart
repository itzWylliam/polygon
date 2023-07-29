import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/features/auth/controllers/auth_controller.dart';

class HomePage extends StatefulHookConsumerWidget {
  HomePage({
    super.key,
    required this.index,
  });

  final int index;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _homePageState();
}

class _homePageState extends ConsumerState<HomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Text("hello home, index is ${widget.index}");
  }

  // void getUser() async {
  //   final user = await ref.read(authControllerProvider).getCurrentUser();
  // }
}
