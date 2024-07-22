import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carouselwidget extends StatefulWidget {
  const Carouselwidget({super.key});

  @override
  State<Carouselwidget> createState() => _CarouselwidgetState();
}

class _CarouselwidgetState extends State<Carouselwidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg2),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg3),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg4),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg5),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg6),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg7),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg8),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg9),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(0.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Constants.carouselBackimg10),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
      options: CarouselOptions(
        height: 360,
        aspectRatio: 3 / 2,
        viewportFraction: 1.0,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayAnimationDuration: Duration(milliseconds: 000),
        animateToClosest: true,
        pauseAutoPlayOnTouch: true,
        enlargeCenterPage: true,
        // onPageChanged: (index) {
        //   setState(() {
        //     _current = index;
        //   });
        // },
      ),
    );
  }
}
