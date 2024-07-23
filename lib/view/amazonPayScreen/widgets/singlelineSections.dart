import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/amazonPayScreen/amazonepayScreen.dart';
import 'package:amazon_clone/view/amazonPayScreen/widgets/contentcard.dart';
import 'package:flutter/material.dart';

class SingleLineSection extends StatelessWidget {
  const SingleLineSection(
      {super.key,
      required this.title,
      required this.image1,
      required this.text1,
      required this.text2,
      required this.text3,
      required this.text4,
      required this.image2,
      required this.image3,
      required this.image4});
  final String image1;
  final String title;

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String image2;

  final String image3;

  final String image4;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10, bottom: 20),
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 19),
            ),
          ),
          Container(
            height: 120,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 0,
                    mainAxisSpacing: 20,
                    crossAxisCount: 4,
                    mainAxisExtent: 100),
                physics: NeverScrollableScrollPhysics(),
                children: [
                  ContentCard(image: image1, text: text1),
                  ContentCard(image: image2, text: text2),
                  ContentCard(image: image3, text: text3),
                  ContentCard(image: image4, text: text4),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
