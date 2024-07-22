import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/homeScreen/widgets/categoryWidget.dart';
import 'package:flutter/material.dart';

class Categorysection extends StatelessWidget {
  const Categorysection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 110,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Categorywidget(image: Constants.prime_day_logo, text: '20-21 July'),
            Categorywidget(image: Constants.groceries_Logo, text: 'Groceries'),
            Categorywidget(image: Constants.mobiles_Logo, text: 'Mobiles'),
            Categorywidget(
                image: Constants.electronics_Logo, text: 'Electronics'),
            Categorywidget(image: Constants.minitv_Logo, text: 'miniTV'),
            Categorywidget(image: Constants.travel_Logo, text: 'Travel'),
            Categorywidget(image: Constants.home_Logo, text: 'Home'),
            Categorywidget(image: Constants.fashion_Logo, text: 'Fashion'),
            Categorywidget(image: Constants.appliances_Logo, text: 'Appliance'),
            Categorywidget(image: Constants.prime_Logo, text: 'Prime'),
            Categorywidget(image: Constants.movies_Logo, text: 'Movies'),
            Categorywidget(image: Constants.deals_Logo, text: 'Deals'),
            Categorywidget(image: Constants.beauty_Logo, text: 'Beauty'),
            Categorywidget(image: Constants.pharmacy_Logo, text: 'Pharmacy'),
            Categorywidget(image: Constants.furniture_Logo, text: 'Furniture'),
          ],
        ),
      ),
    );
  }
}
