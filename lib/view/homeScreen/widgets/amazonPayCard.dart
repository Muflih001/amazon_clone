import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/homeScreen/widgets/amazonePayWidget.dart';
import 'package:flutter/material.dart';

class Amazonpaycard extends StatelessWidget {
  const Amazonpaycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.yellow[300],
                        borderRadius: BorderRadius.circular(5)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: GridView.count(
                        crossAxisCount: 2,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          Amazonepaywidget(
                              image: Constants.AmazonPay_Logo,
                              text: 'Amazon Pay'),
                          Amazonepaywidget(
                              image: Constants.Recharge_Logo, text: 'Recharge'),
                          Amazonepaywidget(
                              image: Constants.Rewards_Logo, text: 'Rewards'),
                          Amazonepaywidget(
                              image: Constants.Bills_Logo, text: 'Bills')
                        ],
                      ),
                    ));
  }
}