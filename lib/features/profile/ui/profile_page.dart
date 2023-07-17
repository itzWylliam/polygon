import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfilePage extends StatefulHookConsumerWidget {
  ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _profilePageState();
}

class _profilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Text("Profile Page");
  }
}