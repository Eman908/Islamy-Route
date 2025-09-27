import 'package:flutter/material.dart';
import 'package:islamy/core/app_routes.dart';
import 'package:islamy/core/app_theme.dart';
import 'package:islamy/views/splash/splash_view.dart';

class Islamy extends StatelessWidget {
  const Islamy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.theme,
      routes: {AppRoutes.splashRoute: (context) => const SplashView()},
      initialRoute: AppRoutes.splashRoute,
    );
  }
}
