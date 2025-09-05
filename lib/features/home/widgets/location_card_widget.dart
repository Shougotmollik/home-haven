import 'package:flutter/material.dart';

class LocationCardWidget extends StatelessWidget {
  const LocationCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Icon(Icons.location_on_outlined),
          Text('Deliver to ', style: textTheme.bodyLarge),
          SizedBox(
            width: size.width * 0.5,
            child: Text(
              'Holding 77, Beribadh Road, Turag, Uttara, Dhaka 1230',
              style: textTheme.titleMedium,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Icon(Icons.keyboard_arrow_down, weight: 34),
        ],
      ),
    );
  }
}
