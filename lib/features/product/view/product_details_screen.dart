import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_haven/features/cart/cubit/cart_cubit.dart';
import 'package:home_haven/features/cart/model/cart_item.dart';
import 'package:home_haven/features/home/model/product_model.dart';

class ProductDetailsScreen extends StatelessWidget {
  final ProductModel product;

  const ProductDetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: theme.surface,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: theme.onSurface),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: product.title,
              child: Container(
                height: size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: theme.primaryContainer.withAlpha(122),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32),
                  ),
                ),
                child: Image.asset(product.image, fit: BoxFit.contain),
              ),
            ),

            /// 📜 Details Section
            Expanded(
              child: Container(
                width: size.width,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: theme.surface,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withAlpha(50),
                      blurRadius: 12,
                      offset: const Offset(0, -4),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Title
                      Text(
                        product.title,
                        style: textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 12),

                      /// Price + Discount
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "\$${product.price}",
                            style: textTheme.headlineMedium?.copyWith(
                              color: theme.primary,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "\$${product.discountPrice}",
                            style: textTheme.bodyMedium?.copyWith(
                              decoration: TextDecoration.lineThrough,
                              color: theme.onSurfaceVariant,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red.shade600,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomRight: Radius.circular(10),
                              ),
                            ),
                            child: Text(
                              '${product.discountPercent}% OFF',
                              style: textTheme.labelSmall?.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      /// Rating
                      Row(
                        children: [
                          const Icon(
                            Icons.star_rounded,
                            color: Colors.amber,
                            size: 20,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '${product.rating}',
                            style: textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            ' (${product.ratingCount} reviews)',
                            style: textTheme.bodySmall?.copyWith(
                              color: theme.onSurfaceVariant,
                            ),
                          ),
                        ],
                      ),

                      const Divider(height: 32, color: Colors.grey),

                      /// Description
                      Text(
                        "Description",
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        product.description,
                        style: textTheme.bodyMedium?.copyWith(
                          height: 1.5,
                          color: theme.onSurface,
                        ),
                      ),

                      const Divider(height: 32, color: Colors.grey),
                      Text(
                        "Available Colors",
                        style: textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Wrap(
                        spacing: 8,
                        children: [
                          _buildColorChip(Colors.black),
                          _buildColorChip(Colors.brown),
                          _buildColorChip(Colors.grey),
                        ],
                      ),
                      const SizedBox(height: 80), // space for bottom bar
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      /// 🛒 Bottom Bar
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: theme.surface,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withAlpha(50),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  final cartItem = CartItem(
                    title: product.title,
                    image: product.image,
                    price: product.price,
                    discountPrice: product.discountPrice,
                    discountPercent: product.discountPercent,
                    color: product.colors,
                  );
                  context.read<CartCubit>().addToCart(cartItem);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("${product.title} added to cart"),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text("Add to Cart"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildColorChip(Color color) {
    return CircleAvatar(radius: 16, backgroundColor: color);
  }
}
