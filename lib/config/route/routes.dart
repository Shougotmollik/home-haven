import 'package:go_router/go_router.dart';
import 'package:home_haven/config/route/route_names.dart';
import 'package:home_haven/features/auth/view/login_screen.dart';
import 'package:home_haven/features/auth/view/registration_screen.dart';
import 'package:home_haven/features/main/view/main_screen.dart';
import 'package:home_haven/features/onboarding/view/onboarding_screen.dart';
import 'package:home_haven/features/splash/splash_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      name: RouteNames.splashScreen,
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: RouteNames.onBoardingScreen,
      path: '/onBoarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      name: RouteNames.login,
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: RouteNames.register,
      path: '/register',
      builder: (context, state) => const RegistrationScreen(),
    ),
    GoRoute(
      name: RouteNames.mainNav,
      path: '/mainNav',
      builder: (context, state) => const MainScreen(),
    ),
  ],
);
