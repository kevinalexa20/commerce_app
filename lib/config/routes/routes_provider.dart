import 'package:commerce_app/config/config.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final navigationKey = GlobalKey<NavigatorState>();

final routesProvider = Provider<GoRouter>(
  (ref) => GoRouter(
    initialLocation: RouteLocation.productPage,
    navigatorKey: navigationKey,
    routes: appRoutes,
  ),
);
