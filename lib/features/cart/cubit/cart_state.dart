import 'package:equatable/equatable.dart';
import 'package:home_haven/features/cart/model/cart_item.dart';

class CartState extends Equatable {
  final List<CartItem> items;
  final double totalPrice;
  final int itemCount;

  const CartState({
    this.items = const [],
    this.totalPrice = 0,
    this.itemCount = 0,
  });

  @override
  List<Object?> get props => [items, totalPrice, itemCount];
}
