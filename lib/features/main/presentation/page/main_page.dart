import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pure_test/core/theme/colors/app_colors.dart';
import 'package:pure_test/features/main/presentation/bloc/main_bloc.dart';
import 'package:pure_test/injector_container.dart';
import 'package:pure_test/router/app_routes.dart';
import 'package:pure_test/router/name_routes.dart';

class MainPage extends StatelessWidget {
  final String? initialRoute;

  const MainPage({
    super.key,
    this.initialRoute,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => sl<MainBloc>()),
      ],
      child: MainBody(
        initialRoute: initialRoute,
      ),
    );
  }
}

class MainBody extends StatefulWidget {
  final String? initialRoute;

  const MainBody({
    super.key,
    this.initialRoute,
  });

  @override
  State<MainBody> createState() => _MainBodyState();
}

class _MainBodyState extends State<MainBody> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return PopScope(
            canPop: false,
            onPopInvoked: (value) {
              if (Navigator.canPop(shellRootNavigatorKey.currentContext!)) {
                Navigator.pop(shellRootNavigatorKey.currentContext!);
              }
            },
            child: Scaffold(
              extendBody: true,
              body: Navigator(
                key: shellRootNavigatorKey,
                initialRoute: widget.initialRoute,
                onGenerateRoute: AppRoutes.onShellGenerateRoute,
              ),
              bottomNavigationBar: BottomNavigationBar(
                elevation: 0,
                landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
                currentIndex: state.tab.index,
                onTap: (index) => changeTap(context, index),
                items: [
                  _buildMenuItem(
                    icon: "ic_main",
                  ),
                  _buildMenuItem(
                    icon: "ic_chat",
                  ),
                  _buildMenuItem(
                    icon: "ic_like",
                  ),
                  _buildMenuItem(
                    icon: "ic_settings",
                  ),
                ],
              ),
            ));
      },
    );
  }

  BottomNavigationBarItem _buildMenuItem({
    required String icon,
  }) {
    return BottomNavigationBarItem(
      label: "",
      icon: SvgPicture.asset(
        "assets/svg/$icon.svg",
        colorFilter:
            const ColorFilter.mode(LightThemeColors.purple, BlendMode.srcIn),
      ),
      activeIcon: SvgPicture.asset(
        "assets/svg/$icon.svg",
        colorFilter:
            const ColorFilter.mode(LightThemeColors.yellow, BlendMode.srcIn),
      ),
    );
  }

  void changeTap(BuildContext context, int index) {
    context.read<MainBloc>().add(ChangeTabEvent(tab: MainTab.values[index]));
    switch (index) {
      case 0:
        Navigator.of(shellRootNavigatorKey.currentContext!)
            .pushNamedAndRemoveUntil(
          Routes.main,
          (route) => false,
        );
        break;
      case 1:
        Navigator.of(shellRootNavigatorKey.currentContext!)
            .pushNamedAndRemoveUntil(
          Routes.massages,
          (route) => false,
        );
        break;
      case 2:
        Navigator.of(shellRootNavigatorKey.currentContext!)
            .pushNamedAndRemoveUntil(
          Routes.likes,
          (route) => false,
        );
        break;
      case 3:
        Navigator.of(shellRootNavigatorKey.currentContext!)
            .pushNamedAndRemoveUntil(
          Routes.settings,
          (route) => false,
        );
        break;
    }
  }
}
