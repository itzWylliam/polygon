import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// TODO: THEME DESIGN

final themeProvider = StateProvider<bool>((ref) => false);

ThemeData getPrimaryTheme(BuildContext context, bool isDarkTheme) {
  return ThemeData(
    scaffoldBackgroundColor: isDarkTheme ? Colors.black : Colors.white,
    textTheme: Theme.of(context)
        .textTheme
        .copyWith(
          titleSmall:
              Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: 11),
        )
        .apply(
          bodyColor: isDarkTheme ? Colors.white : Colors.black,
          displayColor: Colors.grey,
        ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(
          isDarkTheme ? const Color.fromARGB(255, 117, 208, 32) : const Color.fromARGB(255, 0, 123, 60)),
    ),
    listTileTheme: ListTileThemeData(
        iconColor: isDarkTheme ? const Color.fromARGB(255, 117, 208, 32) : const Color.fromARGB(255, 0, 123, 60)),
    appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme ? Colors.black : Colors.white,
        iconTheme:
            IconThemeData(color: isDarkTheme ? Colors.white : Colors.black54)),
  );
}