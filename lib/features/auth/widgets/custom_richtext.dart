import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:home_haven/config/theme/app_colors.dart';

class CustomRichText extends StatelessWidget {
  const CustomRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.onTap,
  });

  final String firstText;
  final String secondText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Align(
      alignment: Alignment.centerRight,
      child: RichText(
        text: TextSpan(
          text: firstText,
          style: textTheme.bodyLarge,
          children: [
            TextSpan(
              text: " $secondText",
              style: textTheme.bodyLarge?.copyWith(
                color: AppColors.primary,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
