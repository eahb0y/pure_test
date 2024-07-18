import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pure_test/core/local_source/local_source.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/features/chats/presentation/page/chats_page.dart';
import 'package:pure_test/features/conversation/presentation/bloc/conversation_bloc.dart';
import 'package:pure_test/features/conversation/presentation/page/conversation_page.dart';
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
            child: const MainPage(),
          );
        }
        return buildPageWithNoTransition(child: const MainPage());
      case Routes.initial:
        return MaterialPageRoute(builder: (_) => const InitialPage());
      case Routes.conversation:
        return MaterialPageRoute(
            builder: (_) => BlocProvider<ConversationBloc>(
                  create: (context) => sl<ConversationBloc>(),
                  child: const ConversationPage(),
                ));
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }

  static Route<dynamic> onShellGenerateRoute(RouteSettings settings) {
    if (kDebugMode) {
      print("route shell :  ${settings.name}");
    }
    switch (settings.name) {
      case Routes.massages:
        return buildPageWithDefaultTransition(
          child: const ChatsPage(),
        );
      default:
        return buildPageWithDefaultTransition(
          child: const Scaffold(
            backgroundColor: LightThemeColors.purple,
          ),
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
