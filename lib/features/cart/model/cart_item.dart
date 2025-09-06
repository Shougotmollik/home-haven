import 'package:equatable/equatable.dart';

class CartItem extends Equatable {
  final String title;
  final String image;
  final double price;
  final double discountPrice;
  final double discountPercent;
  final String color;
  final int quantity;

  const CartItem({
    required this.title,
    required this.image,
    required this.price,
    required this.discountPrice,
    required this.discountPercent,
    required this.color,
    this.quantity = 1,
  });

  CartItem copyWith({int? quantity}) {
    return CartItem(
      title: title,
      image: image,
      price: price,
      discountPrice: discountPrice,
      discountPercent: discountPercent,
      color: color,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  List<Object?> get props => [
    title,
    image,
    price,
    discountPrice,
    discountPercent,
    color,
    quantity,
  ];
}
