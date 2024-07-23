import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/amazonPayScreen/amazonepayScreen.dart';
import 'package:amazon_clone/view/amazonPayScreen/widgets/contentcard.dart';
import 'package:flutter/material.dart';

class QuickAccessContainer extends StatelessWidget {
  const QuickAccessContainer({super.key});

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
              'Quick Actions',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 19),
            ),
          ),
          Container(
            height: 400,
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
                  ContentCard(
                      image: Constants.mobileRecharge,
                      text: '  Mobile\nRecharge'),
                  ContentCard(image: Constants.Bills_Logo, text: 'Pay Bils'),
                  ContentCard(image: Constants.metro, text: 'Metro &\nFastag'),
                  ContentCard(
                      image: Constants.insurence,
                      text: 'Car and Bike\n  Insurence'),
                  ContentCard(image: Constants.investment, text: 'Investment'),
                  ContentCard(image: Constants.giftcard, text: 'Gift Card'),
                  ContentCard(image: Constants.travel, text: 'Travel'),
                  ContentCard(image: Constants.movies, text: 'Movies'),
                  ContentCard(
                      image: Constants.playstore,
                      text: 'Google Play\n  Recharge '),
                  ContentCard(image: Constants.appstore, text: 'AppStore'),
                  ContentCard(image: Constants.electricity, text: 'Electicity'),
                  ContentCard(image: Constants.dth, text: '  DTH\nRecharge'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
