import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:home_haven/config/route/route_names.dart';
import 'package:home_haven/config/theme/app_colors.dart';
import 'package:home_haven/core/utils/app_strings.dart';
import 'package:home_haven/core/utils/app_typrography.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> _moveNextScreen() async {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      if (mounted) {
        context.goNamed(RouteNames.onBoardingScreen);
      }
    });
  }

  @override
  void initState() {
    _moveNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0XFF1A7F65), Color(0XFF115543)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.maps_home_work_outlined,
                size: 85,
                color: AppColors.white,
              ),
              Text(
                AppStrings.appName,
                style: AppTypography.h1.copyWith(color: AppColors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
