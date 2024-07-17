import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pure_test/core/local_source/local_source.dart';
import 'package:pure_test/features/conversation/presentation/page/conversation_page.dart';
import 'package:pure_test/features/home/presentation/page/home_page.dart';
import 'package:pure_test/features/initial/presentation/page/initial_page.dart';
import 'package:pure_test/features/main/presentation/page/main_page.dart';
import 'package:pure_test/injector_container.dart';
import 'package:pure_test/router/name_routes.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final shellRootNavigatorKey = GlobalKey<NavigatorState>();
final localSource = sl<LocalSource>();

class AppRoutes {
  AppRoutes._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print("route : ${settings.name}");
    }
    switch (settings.name) {
      case Routes.main:
        if (settings.arguments != null) {
          return buildPageWithNoTransition(
            child: MainPage(),
          );
        }
        return buildPageWithNoTransition(child: const MainPage());
      case Routes.initial:
        return MaterialPageRoute(builder: (_) => InitialPage());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }
  }

  static Route<dynamic> onShellGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print("route shell :  ${settings.name}");
    }
    switch (settings.name) {
      case Routes.main:
        return buildPageWithDefaultTransition(
          child: const HomePage(),
        );
      case Routes.massages:
        return buildPageWithDefaultTransition(
          child: const ConversationPage(),
        );
      default:
        return buildPageWithDefaultTransition(
          child: const HomePage(),
        );
    }
  }
}

PageRouteBuilder buildPageWithDefaultTransition<T>({required Widget child}) {
  return PageRouteBuilder<T>(
    pageBuilder: (_, __, ___) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

PageRouteBuilder buildPageWithNoTransition<T>({required Widget child}) {
  return PageRouteBuilder<T>(
    reverseTransitionDuration: Duration.zero,
    transitionDuration: Duration.zero,
    pageBuilder: (_, __, ___) => child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
