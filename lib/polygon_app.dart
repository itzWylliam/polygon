import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:polygon/common/navigation/routers.dart';
import 'package:polygon/common/utils/theme.dart';

class Polygon extends ConsumerWidget {
  const Polygon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        // COMPLETE: disable keyboard when background is clicked
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: MaterialApp.router(
      
        theme: getPrimaryTheme(context, ref.watch(themeProvider)),
        
        debugShowCheckedModeBanner: false,
        routerConfig: generalRouter,
      ),
    );

    // return MaterialApp.router(
    //   // TODO: Configure router
    //   routerConfig: null,
    // );
  }
}
