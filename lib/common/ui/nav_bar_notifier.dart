import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationBarNotifier = ChangeNotifierProvider<NavigationBarNotifier>((ref) => NavigationBarNotifier());

class NavigationBarNotifier extends ChangeNotifier {

  int _index = 0;

  int get index => _index;

  set index(int newIndex)  {
    _index = newIndex;
    notifyListeners();
  }
}