import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:polygon/common/navigation/routes.dart';
import 'package:polygon/common/ui/main_screen.dart';
import 'package:polygon/features/auth/ui/signin_page.dart';
import 'package:polygon/features/auth/ui/signup_page.dart';

GoRouter generalRouter = GoRouter(
  initialLocation: '/signin',
  routes: [
    GoRoute(
      path: '/home',
      name: PolygonRoute.home.name,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        child: MainScreen(),
        state: state,
        context: context,
      ),
    ),
    GoRoute(
      path: '/signin',
      name: PolygonRoute.signin.name,
      pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
        child: SignInPage(),
        state: state,
        context: context,
      ),
    ),
    GoRoute(
      path: '/signup',
      name: PolygonRoute.signup.name,
      pageBuilder: (context, state) => buildPageWithSlideUpTransition<void>(
        child: SignUpPage(),
        state: state,
        context: context,
      ),
    ),
    // GoRoute(
    //   path: '/search',
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
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(
        state.error.toString(),
      ),
    ),
  ),
);

// NOTE: slide down
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
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.0, 1.0),
            end: Offset.zero,
          ).animate(animation),
          child: child,
        ),
  );
}
