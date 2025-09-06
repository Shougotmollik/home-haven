import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String title;
  final String image;
  final String description;
  final double price;
  final double discountPrice;
  final double discountPercent;
  final double rating;
  final int ratingCount;
  final String colors;
  final bool isFavorite;

  const ProductModel({
    required this.title,
    required this.image,
    required this.description,
    required this.price,
    required this.discountPrice,
    required this.discountPercent,
    required this.rating,
    required this.ratingCount,
    required this.colors,
    this.isFavorite = false,
  });

  @override
  List<Object?> get props => [
    title,
    image,
    description,
    price,
    description,
    price,
    discountPrice,
    discountPercent,
    rating,
    ratingCount,
    colors,
    isFavorite,
  ];
}
