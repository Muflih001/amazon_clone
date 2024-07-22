import 'package:flutter/material.dart';

class Recentproductcard extends StatelessWidget {
  const Recentproductcard({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Container(
        height: 200,
        width: 150,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: Text(text),
            ),
            Container(
              height: 140,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(image))),
            ),
            SizedBox(
              height: 2,
            )
          ],
        ),
      ),
    );
  }
}
