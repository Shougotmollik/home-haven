import 'package:home_haven/features/cart/model/cart_item.dart';

class CartRepository {
  final List<CartItem> _items = [];

  List<CartItem> get items => List.unmodifiable(_items);

  void addItem(CartItem item) {
    final index = _items.indexWhere((e) => e.title == item.title);
    if (index >= 0) {
      _items[index] = _items[index].copyWith(
        quantity: _items[index].quantity + 1,
      );
    } else {
      _items.add(item);
    }
  }

  void removeItem(CartItem item) {
    _items.remove(item);
  }

  void clearCart() {
    _items.clear();
  }

  double get totalPrice =>
      _items.fold(0, (sum, item) => sum + item.price * item.quantity);

  int get itemCount => _items.fold(0, (sum, item) => sum + item.quantity);
}
