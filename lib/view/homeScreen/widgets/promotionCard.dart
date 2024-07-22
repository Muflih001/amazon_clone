import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({
    super.key,
    required this.image,
  });
  final String image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image)),
            borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
