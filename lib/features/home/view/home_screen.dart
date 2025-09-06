import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_haven/features/home/cubit/home_cubit.dart';

import 'package:home_haven/features/home/model/product_model.dart';
import 'package:home_haven/features/home/widgets/banner_slider_widget.dart';
import 'package:home_haven/features/home/widgets/custom_search_bar.dart';
import 'package:home_haven/features/home/widgets/location_card_widget.dart';
import 'package:home_haven/features/home/widgets/product_card_widget.dart';
import 'package:home_haven/widgets/custom_heading_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: SingleChildScrollView(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) {
                if (state is HomeLoading) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is HomeLoaded) {
                  final products = state.product;
                  return Column(
                    children: [
                      _buildSearchSection(),
                      const LocationCardWidget(),
                      const BannerSliderWidget(),
                      CustomHeadingButton(
                        heading: 'Special Offer',
                        onTap: () {},
                      ),

                      _buildSpecialOfferSection(size, products),
                    ],
                  );
                } else if (state is HomeError) {
                  return Center(child: Text(state.message));
                }
                return const Center(child: Text('Some this went wrong'));
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSpecialOfferSection(Size size, List<ProductModel> products) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SizedBox(
        height: size.height * 0.28,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCardWidget(product: product);
          },
          separatorBuilder: (context, index) => const SizedBox(width: 12),
          itemCount: 3,
        ),
      ),
    );
  }

  Widget _buildSearchSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          const Expanded(child: CustomSearchBar()),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_rounded, size: 34),
          ),
        ],
      ),
    );
  }
}
