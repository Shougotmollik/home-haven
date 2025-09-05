import 'package:flutter/material.dart';
import 'package:home_haven/config/theme/app_colors.dart';

import 'package:home_haven/features/home/widgets/banner_slider_widget.dart';
import 'package:home_haven/features/home/widgets/custom_search_bar.dart';
import 'package:home_haven/features/home/widgets/location_card_widget.dart';
import 'package:home_haven/widgets/custom_heading_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final theme = Theme.of(context).colorScheme;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildSearchSection(),
                const LocationCardWidget(),
                const BannerSliderWidget(),
                CustomHeadingButton(heading: 'Special Offer', onTap: () {}),

                Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    color: theme.primaryContainer,
                    boxShadow: [
                      BoxShadow(
                        color: theme.onPrimaryContainer.withAlpha(122),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(children: []),
                ),
              ],
            ),
          ),
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
