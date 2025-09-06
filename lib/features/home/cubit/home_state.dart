part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();
}

final class HomeInitial extends HomeState {
  @override
  List<Object> get props => [];
}

final class HomeLoading extends HomeState {
  @override
  List<Object> get props => [];
}

final class HomeLoaded extends HomeState {
  final List<ProductModel> product;

  const HomeLoaded(this.product);

  @override
  List<Object> get props => [product];
}

final class HomeError extends HomeState {
  final String message;

  const HomeError(this.message);

  @override
  List<Object> get props => [message];
}
