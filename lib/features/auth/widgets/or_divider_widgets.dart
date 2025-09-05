import 'package:flutter/material.dart';

class OrDividerWidgets extends StatelessWidget {
  const OrDividerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: Divider(thickness: 1, color: Colors.grey)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text("OR", style: TextStyle(color: Colors.grey)),
        ),
        Expanded(child: Divider(thickness: 1, color: Colors.grey)),
      ],
    );
  }
}
