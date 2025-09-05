import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());

  Future<void> login({required String email, required String password}) async {
    emit(state.copyWith(isLoading: true, isSuccess: false, errorMessage: null));
    await Future.delayed(const Duration(milliseconds: 300));

    if (email == "shougot@test.com" && password == "123456") {
      emit(state.copyWith(isLoading: false, isSuccess: true));
    } else {
      emit(
        state.copyWith(
          isLoading: false,
          isSuccess: false,
          errorMessage: "Invalid email and password",
        ),
      );
    }
  }
}
