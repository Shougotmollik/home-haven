import 'package:flutter/material.dart';

class CustomHeadingButton extends StatelessWidget {
  const CustomHeadingButton({
    super.key,
    required this.heading,
    required this.onTap,
  });

  final String heading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(heading, style: textTheme.displaySmall),
          TextButton(onPressed: onTap, child: const Text('See More')),
        ],
      ),
    );
  }
}
