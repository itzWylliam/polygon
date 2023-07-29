import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:polygon/common/navigation/routes.dart';
import 'package:polygon/common/ui/bottom_navigation/main_screen.dart';
import 'package:polygon/features/auth/ui/signin_page.dart';
import 'package:polygon/features/auth/ui/signup_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

List<RouteBase> routes = [
  GoRoute(
    path: '/main/home',
    name: PolygonRoute.home.name,
    pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      child: const MainScreen(),
      state: state,
      context: context,
    ),
  ),
  GoRoute(
    path: '/signin',
    name: PolygonRoute.signin.name,
    pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      child: const SignInPage(),
      state: state,
      context: context,
    ),
  ),
  GoRoute(
    path: '/signup',
    name: PolygonRoute.signup.name,
    pageBuilder: (context, state) => buildPageWithSlideUpTransition<void>(
      child: const SignUpPage(),
      state: state,
      context: context,
    ),
  ),
  // GoRoute(
  //   path: '/main/search',
  //   name: PolygonRoute.search.name,
  // ),
  // GoRoute(
  //   path: '/create-auction',
  //   name: PolygonRoute.createauction.name,
  // ),
  // GoRoute(
  //   path: '/checkout',
  //   name: PolygonRoute.checkout.name,
  // ),
  // GoRoute(
  //   path: '/product-detail/:id',
  //   name: PolygonRoute.productdetail.name,
  // ),
  // GoRoute(
  //   path: '/auction-detail/:id',
  //   name: PolygonRoute.auctiondetail.name,
  // ),
  // GoRoute(
  //   path: '/user-detail/:id',
  //   name: PolygonRoute.userdetail.name,
  // ),
  // GoRoute(
  //   path: '/setting/:id',
  //   name: PolygonRoute.setting.name,
  // ),
  // GoRoute(
  //   path: '/profile/:id',
  //   name: PolygonRoute.profiledetail.name,
  // ),
  // GoRoute(
  //   path: '/main/profile',
  //   name: PolygonRoute.profiledetail.name,
  // ),
];

Widget errorResponse(BuildContext context, GoRouterState state) {
  return Scaffold(
    body: Center(
      child: Text(
        state.error.toString(),
      ),
    ),
  );
}

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

CustomTransitionPage buildPageWithSlideUpTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  const begin = Offset(0.0, 1.0);
  const end = Offset.zero;
  const curve = Curves.ease;

  var tween = Tween(
    begin: begin,
    end: end,
  ).chain(CurveTween(curve: curve));

  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
      position: animation.drive(tween),
      child: child,
    ),
  );
}

class polygon_router extends GoRouter {
  polygon_router({
    required super.initialLocation,
    required super.routes,
    super.errorBuilder,
  }) : super(navigatorKey: _rootNavigatorKey);


}
