import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_haven/app.dart';
import 'package:home_haven/features/auth/cubit/login/login_cubit.dart';
import 'package:home_haven/features/main/cubit/navbar_cubit.dart';
import 'package:home_haven/features/onboarding/cubit/onboarding_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => OnboardingCubit()),
        BlocProvider(create: (context) => LoginCubit()),
        BlocProvider(create: (context) => NavbarCubit()),
      ],
      child: const MyApp(),
    ),
  );
}
