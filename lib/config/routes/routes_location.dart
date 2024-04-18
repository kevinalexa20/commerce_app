import 'package:flutter/foundation.dart' show immutable;

@immutable
class RouteLocation {
  const RouteLocation._();

  static String get productPage => '/productPage';
  static String get discussionPage => '/discussionPage';
}