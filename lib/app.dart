import 'package:flutter/material.dart';
import 'package:home_haven/config/route/routes.dart';
import 'package:home_haven/config/theme/app_theme.dart';
import 'package:home_haven/core/utils/app_strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      title: AppStrings.appName,
      routerConfig: router,
    );
  }
}
