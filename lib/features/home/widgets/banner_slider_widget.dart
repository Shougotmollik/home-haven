import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:home_haven/config/theme/app_colors.dart';
import 'package:home_haven/features/home/widgets/banner_card.dart';

class BannerSliderWidget extends StatelessWidget {
  const BannerSliderWidget({super.key});

  static final CarouselSliderController _controller =
      CarouselSliderController();
  static final ValueNotifier<int> _currentIndex = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: 3,
          itemBuilder: (context, index, realIndex) => const BannerCard(),
          options: CarouselOptions(
            aspectRatio: 15 / 9,
            viewportFraction: 1,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            onPageChanged: (index, reason) {
              _currentIndex.value = index;
            },
          ),
        ),

        // 🔹 Dot Indicator
        ValueListenableBuilder<int>(
          valueListenable: _currentIndex,
          builder: (context, value, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 4,
                    vertical: 8,
                  ),
                  width: value == index ? 12 : 8,
                  height: value == index ? 12 : 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: value == index ? AppColors.primary : Colors.grey,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
