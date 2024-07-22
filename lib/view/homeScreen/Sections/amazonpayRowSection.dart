import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/homeScreen/widgets/amazonPayCard.dart';
import 'package:amazon_clone/view/homeScreen/widgets/promotionCard.dart';
import 'package:amazon_clone/view/homeScreen/widgets/recentproductcard.dart';
import 'package:flutter/material.dart';

class Amazonpayrowsection extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Amazonpaycard(),
        Recentproductcard(
          image: Constants.product1,
          text: 'Keep shopping for Tablet cases',
        ),
        PromotionCard(image: Constants.promotionimg1),
        Recentproductcard(
          image: Constants.product3,
          text: 'Keep shopping for Mobile cases',
        ),
        PromotionCard(image: Constants.promotionimg3),
        Recentproductcard(
          image: Constants.product2,
          text: 'Keep shopping for Cloths & Towels',
        ),
        PromotionCard(image: Constants.promotionimg2),
      ],
    );
  }
}
