import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/ui/bottom_navigation/bottom_navigation_bar.dart';
import 'package:polygon/common/ui/bottom_navigation/nav_bar_notifier.dart';
import 'package:polygon/features/browse/ui/home_page.dart';
import 'package:polygon/features/history/ui/history_page.dart';
import 'package:polygon/features/auth/ui/profile_page.dart';
import 'package:polygon/features/search/ui/search_page.dart';

class MainScreen extends StatefulHookConsumerWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _mainScreenState();
}

class _mainScreenState extends ConsumerState<MainScreen> {
  late HomePage homePage;
  late SearchPage searchPage;
  late HistoryPage historyPage;
  late ProfilePage profilePage;

  late List<Widget> _screens;

  final CustomBottomNavigationBar btmBar = CustomBottomNavigationBar();

  @override
  void initState() {
    homePage = HomePage(
      index: ref.read(navigationBarNotifier).index,
    );
    searchPage = SearchPage();
    historyPage = HistoryPage();
    profilePage = ProfilePage();

    _screens = [
      homePage,
      searchPage,
      historyPage,
      profilePage,
    ];
  }

  @override
  Widget build(BuildContext context) {
    safePrint("Rebuilding");
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Container(
          width: double.infinity,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: ListenableBuilder(
              listenable: ref.read(navigationBarNotifier),
              builder: (context, child) => _screens[ref.read(navigationBarNotifier).index],
            ),
            bottomNavigationBar: btmBar,
          ),
        ),
      ),
    );
  }
}
