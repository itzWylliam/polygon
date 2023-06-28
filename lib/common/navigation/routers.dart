import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:polygon/common/navigation/routes.dart';

GoRouter generalRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      name: PolygonRoute.home.name,
    ),
    GoRoute(
      path: '/signin',
      name: PolygonRoute.signin.name,
    ),
    GoRoute(
      path: '/signup',
      name: PolygonRoute.signup.name,
    ),
    GoRoute(
      path: '/search',
      name: PolygonRoute.search.name,
    ),
    GoRoute(
      path: '/create-auction',
      name: PolygonRoute.createauction.name,
    ),
    GoRoute(
      path: '/checkout',
      name: PolygonRoute.checkout.name,
    ),
    GoRoute(
      path: '/product-detail/:id',
      name: PolygonRoute.productdetail.name,
    ),
    GoRoute(
      path: '/auction-detail/:id',
      name: PolygonRoute.auctiondetail.name,
    ),
    GoRoute(
      path: '/user-detail/:id',
      name: PolygonRoute.userdetail.name,
    ),
    GoRoute(
      path: '/setting/:id',
      name: PolygonRoute.setting.name,
    ),
    GoRoute(
      path: '/profile/:id',
      name: PolygonRoute.profiledetail.name,
    ),
  ],
  errorBuilder: (context, state) => Scaffold(
    body: Center(
      child: Text(
        state.error.toString(),
      ),
    ),
  ),
);
