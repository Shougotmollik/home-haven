part of 'login_cubit.dart';

class LoginState extends Equatable {
  final bool isLoading;
  final String? errorMessage;
  final bool isSuccess;

  const LoginState({
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  LoginState copyWith({
    bool? isLoading,
    String? errorMessage,
    bool? isSuccess,
  }) {
    return LoginState(
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isLoading,
      errorMessage: errorMessage,
    );
  }

  @override
  List<Object?> get props => [isLoading, errorMessage, isSuccess];
}
