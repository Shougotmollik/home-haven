import 'package:flutter/material.dart';
import 'package:home_haven/config/theme/app_colors.dart';
import 'package:home_haven/core/utils/app_assets.dart';
import 'package:home_haven/core/utils/app_strings.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Container(
      height: size.height * 0.3,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.bannerImage1),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 34),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              AppColors.primary.withAlpha(240),
              AppColors.primary.withAlpha(200),
              AppColors.primary.withAlpha(180),
              AppColors.primary.withAlpha(122),
              AppColors.primary.withAlpha(100),
              Colors.transparent,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          spacing: 12,
          children: [
            SizedBox(
              width: size.width * 0.6,
              child: Text(
                AppStrings.bannerTitle1,
                style: textTheme.headlineMedium?.copyWith(
                  color: AppColors.onDarkSurface,
                  fontSize: 24,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.7,
              child: Text(
                AppStrings.bannerDescription1,
                style: textTheme.bodySmall?.copyWith(
                  color: AppColors.onDarkSurface,
                  fontSize: 14,
                ),
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                minimumSize: const Size(100, 28),
                foregroundColor: AppColors.primary,
                backgroundColor: AppColors.white,
              ),
              onPressed: () {},
              child: const Text('Shop Now'),
            ),
          ],
        ),
      ),
    );
  }
}
