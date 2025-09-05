part of 'onboarding_cubit.dart';

class OnboardingState extends Equatable {
  final int currentScreen;
  final bool isLastScreen;

  const OnboardingState({
    required this.currentScreen,
    required this.isLastScreen,
  });

  OnboardingState copyWith({int? currentScreen, bool? isLastScreen}) {
    return OnboardingState(
      currentScreen: currentScreen ?? this.currentScreen,
      isLastScreen: isLastScreen ?? this.isLastScreen,
    );
  }

  @override
  List<Object?> get props => [currentScreen, isLastScreen];
}
