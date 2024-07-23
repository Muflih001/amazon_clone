import 'package:flutter/material.dart';

class Rectanglecontainer extends StatelessWidget {
  const Rectanglecontainer(
      {super.key, required this.text, this.height, this.width});
  final String text;
  final double? height;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.grey)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
