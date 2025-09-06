import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String title;
  final String image;
  final String description;
  final double price;
  final double discountPrice;
  final String discountPercent;
  final double rating;
  final int ratingCount;
  final String colors;

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
  ];
}
