import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationService {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static BuildContext get context => navigatorKey.currentContext!;

  static void push(String route) {
    if (navigatorKey.currentContext != null) {
      navigatorKey.currentContext!.push(route);
    }
  }

  static void go(String route) {
    if (navigatorKey.currentContext != null) {
      navigatorKey.currentContext!.go(route);
    }
  }

  static void pop() {
    if (navigatorKey.currentContext != null &&
        navigatorKey.currentContext!.canPop()) {
      navigatorKey.currentContext!.pop();
    }
  }
}
