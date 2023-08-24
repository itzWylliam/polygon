import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryPage extends StatefulHookConsumerWidget {
  const HistoryPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _historyPageState();
}

class _historyPageState extends ConsumerState<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      "Consumer page",
    );
  }
}
