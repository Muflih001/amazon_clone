import 'package:flutter/material.dart';

class Amazonepaywidget extends StatelessWidget {
  const Amazonepaywidget({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(image: AssetImage(image))),
        ),
        Text(text)
      ],
    );
  }
}
