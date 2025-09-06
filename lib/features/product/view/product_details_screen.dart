import 'package:flutter/material.dart';
import 'package:home_haven/features/home/model/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(children: [Image.asset(product.image)]));
  }
}
