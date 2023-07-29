import 'package:amplify_core/amplify_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:polygon/common/navigation/routers.dart';
import 'package:polygon/features/auth/controllers/auth_controller.dart';

class Polygon extends StatefulHookConsumerWidget {
  const Polygon({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _polygonState();
}

class _polygonState extends ConsumerState<Polygon> {
  @override
  Widget build(BuildContext context) {
    return 
    // MaterialApp.router(
    //   theme: getPrimaryTheme(context, ref.watch(themeProvider)),
    //   debugShowCheckedModeBanner: false,
    //   routerConfig: polygon_router(
    //     initialLocation: '/main/home',
    //     routes: routes,
    //     errorBuilder: (context, state) => errorResponse(context, state),
    //   ),
    // );
    FutureBuilder<GoRouter>(
      future: getPolygonRouter(),
      builder: (context, snapshot) {
        return GestureDetector(
          onTap: () {
            // COMPLETE: disable keyboard when background is clicked
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: snapshot.hasData
              ? MaterialApp.router(
                  // theme: getPrimaryTheme(context, ref.watch(themeProvider)),
                  debugShowCheckedModeBanner: false,
                  routerConfig: snapshot.data,
                )
              // TODO: change to splash screen
              : MaterialApp(
                  debugShowCheckedModeBanner: false,
                  home: LoaderOverlay(
                    child: Container(
                      color: Colors.white,
                      child: const SafeArea(
                        child: Scaffold(
                          body: Center(
                            child: Text("Loading..."),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
        );
      },
    );
  }

  Future<AuthUser> getUser(WidgetRef ref) async {
    final user = await ref.read(authControllerProvider).getCurrentUser();
    return user;
  }

  Future<bool> isUserSignedIn(WidgetRef ref) async {
    bool signIn = await ref.read(authControllerProvider).isUserSignedIn();
    safePrint("User is currently signed in: $signIn");
    return signIn;
  }

  Future<GoRouter> getPolygonRouter() async {
    final GoRouter config;
    if (await isUserSignedIn(ref)) {
      config = polygon_router(
        initialLocation: '/main/home',
        routes: routes,
        errorBuilder: (context, state) => errorResponse(context, state),
      );
    } else {
      config = polygon_router(
        initialLocation: '/signin',
        routes: routes,
        errorBuilder: (context, state) => errorResponse(context, state),
      );
    }

    return config;
  }
}

// class Polygon extends HookConsumerWidget {
//   Polygon({super.key});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return GestureDetector(
//       onTap: () {
//         FocusManager.instance.primaryFocus?.unfocus();
//       },
//       child: MaterialApp.router(
//         theme: getPrimaryTheme(context, ref.watch(themeProvider)),
//         debugShowCheckedModeBanner: false,
//         routerConfig: getRouterConfig(ref),
//       ),
//     );
//   }
//   Future<AuthUser> getUser(WidgetRef ref) async {
//     final user = await ref.read(authControllerProvider).getCurrentUser();
//     return user;
//   }
//   Future<bool> isUserSignedIn(WidgetRef ref) async {
//     return ref.read(authControllerProvider).isUserSignedIn();
//   }
//   Future<RouterConfig<Object>?> getRouterConfig(WidgetRef ref) async {
//     RouterConfig<Object>? config;
//     if (await isUserSignedIn(ref)) {
//       config = polygon_router(
//         initialLocation: '/home',
//         routes: routes,
//         errorBuilder: (context, state) => errorResponse(context, state),
//       );
//     } else {
//       config = polygon_router(
//         initialLocation: '/signin',
//         routes: routes,
//         errorBuilder: (context, state) => errorResponse(context, state),
//       );
//     }
//     return config;
//   }
// }
