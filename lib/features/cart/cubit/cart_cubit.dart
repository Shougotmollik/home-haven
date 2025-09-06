import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_haven/features/cart/model/cart_item.dart';
import 'package:home_haven/features/cart/repository/cart_repository.dart';

import 'cart_state.dart';

class CartCubit extends Cubit<CartState> {
  final CartRepository repository;

  CartCubit(this.repository) : super(const CartState());

  void loadCart() {
    emit(
      CartState(
        items: repository.items,
        totalPrice: repository.totalPrice,
        itemCount: repository.itemCount,
      ),
    );
  }

  void addToCart(CartItem item) {
    repository.addItem(item);
    loadCart();
  }

  void removeFromCart(CartItem item) {
    repository.removeItem(item);
    loadCart();
  }

  void clearCart() {
    repository.clearCart();
    loadCart();
  }
}
