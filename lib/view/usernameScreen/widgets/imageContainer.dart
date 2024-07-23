import 'package:flutter/material.dart';

class Imagecontainer extends StatelessWidget {
  const Imagecontainer({
    super.key,
    required this.imgae,
    required this.heigth,
    required this.width,
  });
  final String imgae;
  final double heigth;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        children: [
          Container(
            height: heigth,
            width: width,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Image.asset(imgae),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
