import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_haven/core/utils/app_assets.dart';
import 'package:home_haven/core/utils/app_strings.dart';
import 'package:home_haven/features/onboarding/model/onboarding_model.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit()
    : super(const OnboardingState(currentScreen: 0, isLastScreen: false));

  final List<OnboardingModel> screens = [
    OnboardingModel(
      title: AppStrings.onBoardingTitle1,
      description: AppStrings.onBoardingDes1,
      image: AppAssets.onBoardingImage1,
    ),
    OnboardingModel(
      title: AppStrings.onBoardingTitle2,
      description: AppStrings.onBoardingDes2,
      image: AppAssets.onBoardingImage2,
    ),
    OnboardingModel(
      title: AppStrings.onBoardingTitle3,
      description: AppStrings.onBoardingDes3,
      image: AppAssets.onBoardingImage3,
    ),
  ];

  void updateIndex(int index) {
    emit(
      state.copyWith(
        currentScreen: index,
        isLastScreen: index == screens.length - 1,
      ),
    );
  }
}
