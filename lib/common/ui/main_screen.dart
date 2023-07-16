import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/ui/bottom_navigation_bar.dart';
import 'package:polygon/common/ui/nav_bar_notifier.dart';

final NavigationBarNotifier _navbarNotifier = NavigationBarNotifier();

class MainScreen extends StatefulHookConsumerWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _mainScreenState();
}

class _mainScreenState extends ConsumerState<MainScreen> {
  late ValueNotifier<int> pageIndex;

  final CustomBottomNavigationBar btmBar = CustomBottomNavigationBar(
    notifier: _navbarNotifier,
  );

  @override
  Widget build(BuildContext context) {
    pageIndex = useState(0);

    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: const Text(
            "Hello",
          ),
          bottomNavigationBar: btmBar,
        ),
      ),
    );
  }
}
