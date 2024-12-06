import 'package:flutter/material.dart';

class FreshVegetableCard extends StatelessWidget {
  const FreshVegetableCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.unit,
  });

  final String imageUrl;
  final String title;
  final String price;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Image.network(
              imageUrl,
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ), // Missing comma fixed here
            const SizedBox(height: 5),
            Text(
              "Rs 300/kg",
              style: const TextStyle( // Added `const` for optimization
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
