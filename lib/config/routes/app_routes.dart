import 'package:commerce_app/config/config.dart';
import 'package:commerce_app/screens/screens.dart';
import 'package:go_router/go_router.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.productPage,
    parentNavigatorKey: navigationKey,
    builder: ProductPage.builder,
  ),
  GoRoute(
    path: RouteLocation.discussionPage,
    parentNavigatorKey: navigationKey,
    builder: DiscussionPage.builder,
  ),
];
