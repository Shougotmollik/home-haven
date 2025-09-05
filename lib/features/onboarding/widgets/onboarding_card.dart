import 'package:flutter/material.dart';
import 'package:home_haven/features/onboarding/model/onboarding_model.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({super.key, required this.onBoarding});

  final OnboardingModel onBoarding;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadiusGeometry.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          child: Image.asset(
            onBoarding.image,
            height: size.height * 0.65,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 16),
          child: Column(
            spacing: 12,
            children: [
              Text(
                onBoarding.title,
                style: textTheme.displayMedium,
                textAlign: TextAlign.center,
              ),
              Text(
                onBoarding.description,
                style: textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
