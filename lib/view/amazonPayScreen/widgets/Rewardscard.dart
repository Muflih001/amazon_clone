import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/amazonPayScreen/amazonepayScreen.dart';
import 'package:flutter/material.dart';

class RewardCard extends StatelessWidget {
  const RewardCard({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Amazonepayscreen(),
          ),
        );
      },
      child: Container(
        height: 220,
        width: 180,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Constants.reward), fit: BoxFit.fill)),
        child: Column(
          children: [
            Container(
              height: 165,
              width: 55,
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                height: 40,
                width: 150,
                color: Colors.yellow[100],
                child: Center(child: Text(text)))
          ],
        ),
      ),
    );
  }
}
