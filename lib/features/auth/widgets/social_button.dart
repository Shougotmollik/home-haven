import 'package:flutter/material.dart';
import 'package:home_haven/config/theme/app_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
    required this.btnImage,
    required this.btnText,
    required this.onTap,
  });

  final String btnImage;
  final String btnText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.primary, width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 6,
            children: [
              Image.asset(btnImage, height: 25),
              Text(
                btnText,
                style: textTheme.titleMedium?.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
