import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:polygon/common/ui/nav_bar_notifier.dart';
import 'package:polygon/common/utils/bottom_nav_items.dart';

class CustomBottomNavigationBar extends StatefulHookConsumerWidget {
  CustomBottomNavigationBar({
    super.key,
    required this.notifier,
  });

  final NavigationBarNotifier notifier;

  final _customBottomNavigationBarState _customBarState = _customBottomNavigationBarState();

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _customBarState;
}

class _customBottomNavigationBarState
    extends ConsumerState<CustomBottomNavigationBar> {
  final double btmIconSize = 25.0;

  @override
  Widget build(BuildContext context) {

    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
      ),
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            getIconButton(BottomNavItem.home),
            getIconButton(BottomNavItem.search),
            getIconButton(BottomNavItem.cart),
            getIconButton(BottomNavItem.profile),
          ],
        ),
      ),
    );
  }

  Widget getIconButton(BottomNavItem item) {
    final IconData activeIcon;
    final IconData inactiveIcon;
    final int currentPageIndex;

    switch (item) {
      case BottomNavItem.home:
        currentPageIndex = 0;
        activeIcon = Icons.home;
        inactiveIcon = Icons.home_outlined;
      case BottomNavItem.search:
        currentPageIndex = 1;
        activeIcon = Icons.search;
        inactiveIcon = Icons.search;
      case BottomNavItem.cart:
        currentPageIndex = 2;
        activeIcon = Icons.shopping_basket;
        inactiveIcon = Icons.shopping_basket_outlined;
      case BottomNavItem.profile:
        currentPageIndex = 3;
        activeIcon = Icons.person;
        inactiveIcon = Icons.person_2_outlined;
      default:
        throw "Invalid Bottom Navigation Bar Item";
    }

    return Stack(
      children: [
        Positioned(
          // TODO: problem with alignment, hiddenn by width parameter
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            height: 4,
            width: widget.notifier.index == currentPageIndex ? 47.5 : 0, 
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            widget.notifier.index = currentPageIndex;
          },
          icon: widget.notifier.index == currentPageIndex
              ? Icon(
                  activeIcon,
                  color: Colors.black,
                  size: btmIconSize,
                )
              : Icon(
                  inactiveIcon,
                  color: Colors.grey,
                  size: btmIconSize,
                ),
        ),
      ],
    );
  }
}
