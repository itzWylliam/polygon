import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HistoryPage extends StatefulHookConsumerWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _historyPageState();
}

class _historyPageState extends ConsumerState<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Text(
      "Consumer page",
    );
  }
}
