import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_haven/features/cart/cubit/cart_cubit.dart';
import 'package:home_haven/features/cart/cubit/cart_state.dart';
import 'package:home_haven/features/cart/widgets/cart_product_card.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          if (state.items.isEmpty) {
            return const Center(child: Text("Your cart is empty 🛒"));
          }

          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                spacing: 18,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('My Cart', style: textTheme.displaySmall),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications_none,
                          size: 32,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.separated(
                      itemCount: state.items.length,
                      itemBuilder: (context, index) {
                        final item = state.items[index];
                        return CartProductCard(item: item);
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Total: \$${state.totalPrice}",
                  style: textTheme.headlineMedium,
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {},
                  child: const Text("Checkout"),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
