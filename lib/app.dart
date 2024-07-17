
import 'package:flutter/material.dart';
import 'package:pure_test/core/theme/theme_data.dart';
import 'package:pure_test/generated/l10n.dart';
import 'package:pure_test/router/app_routes.dart';
import 'package:pure_test/router/name_routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
            navigatorKey: rootNavigatorKey,
            initialRoute: Routes.initial,
            onGenerateRoute: AppRoutes.onGenerateRoute,
            title: 'Pure',
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            themeMode: ThemeMode.light,
            supportedLocales: AppLocalization.delegate.supportedLocales,
            localizationsDelegates: const [
              AppLocalization.delegate,
            ],
    );
  }
}
