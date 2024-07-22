import 'package:flutter/material.dart';

class Categorywidget extends StatelessWidget {
  const Categorywidget({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration:
                BoxDecoration(image: DecorationImage(image: AssetImage(image))),
          ),
          Text(text)
        ],
      ),
    );
  }
}
