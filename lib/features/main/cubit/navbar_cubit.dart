import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navbar_state.dart';

class NavbarCubit extends Cubit<NavbarState> {
  NavbarCubit() : super(const NavbarState());

  void updateIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
