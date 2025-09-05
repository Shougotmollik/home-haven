import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:home_haven/config/route/route_names.dart';
import 'package:home_haven/config/theme/app_colors.dart';
import 'package:home_haven/features/onboarding/cubit/onboarding_cubit.dart';
import 'package:home_haven/features/onboarding/widgets/onboarding_card.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      builder: (context, state) {
        final onBoardings = context.read<OnboardingCubit>();
        return Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: PageView.builder(
                  controller: controller,
                  onPageChanged: onBoardings.updateIndex,
                  itemCount: onBoardings.screens.length,
                  itemBuilder: (context, index) {
                    final onBoarding = onBoardings.screens[index];
                    return OnboardingCard(onBoarding: onBoarding);
                  },
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  onBoardings.screens.length,
                  (index) => Container(
                    margin: const EdgeInsets.all(4),
                    width: state.currentScreen == index ? 12 : 8,
                    height: state.currentScreen == index ? 12 : 8,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: state.currentScreen == index
                          ? AppColors.primary
                          : Colors.grey,
                    ),
                  ),
                ),
              ),
            ],
          ),
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                if (state.isLastScreen) {
                  context.goNamed(RouteNames.login);
                } else {
                  controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(state.isLastScreen ? "Get Started" : "Next"),
            ),
          ),
        );
      },
    );
  }
}
