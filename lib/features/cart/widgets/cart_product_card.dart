import 'package:flutter/material.dart';
import 'package:home_haven/features/cart/model/cart_item.dart';
import 'package:home_haven/features/cart/widgets/quantity_selector.dart';

class CartProductCard extends StatelessWidget {
  const CartProductCard({super.key, required this.item});

  final CartItem item;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context).colorScheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          spacing: 12,
          children: [
            Image.asset(
              item.image,
              height: size.height * 0.12,
              fit: BoxFit.cover,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.title, style: textTheme.bodyLarge),
                Text(
                  "\$${item.price}",
                  style: textTheme.headlineMedium?.copyWith(
                    color: theme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Wrap(
                  spacing: 12,
                  children: [
                    Text(
                      "\$${item.discountPrice}",
                      style: textTheme.bodyMedium?.copyWith(
                        decoration: TextDecoration.lineThrough,
                        color: theme.onSurfaceVariant,
                      ),
                    ),
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
                        '${item.discountPercent}% OFF',
                        style: textTheme.labelSmall?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(item.color),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  spacing: 40,
                  children: [
                    const Icon(Icons.favorite_outline),

                    QuantitySelector(
                      quantity: item.quantity,
                      onIncrement: () {
                        item.quantity + 1;
                      },
                      onDecrement: () {
                        item.quantity - 1;
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
