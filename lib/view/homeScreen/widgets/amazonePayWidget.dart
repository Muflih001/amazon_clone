import 'package:amazon_clone/view/amazonPayScreen/amazonepayScreen.dart';
import 'package:flutter/material.dart';

class Amazonepaywidget extends StatelessWidget {
  const Amazonepaywidget({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Amazonepayscreen(),
          ),
        );
      },
      child: Column(
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
      ),
    );
  }
}
