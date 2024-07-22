import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:flutter/material.dart';

class Morescreen extends StatelessWidget {
  const Morescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 405.0),
      child: Container(
          height: 381,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.grey, width: 2),
                  bottom: BorderSide(color: Colors.grey, width: 1)),
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Do more with Amazon',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10, right: 10),
                child: Container(
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 182, 253, 253),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.qr_code_scanner_rounded,
                        size: 60,
                      ),
                      Text(
                        'Scan any QR to Pay',
                        style: TextStyle(color: Colors.teal[900]),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 8.0,
                  right: 8,
                ),
                child: Container(
                  height: 180,
                  child: GridView(
                    padding: EdgeInsets.only(top: 10),
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 75,
                    ),
                    children: [
                      moreCard(
                          image: Constants.AmazonPay_Logo,
                          text: 'Pay Bils, Send\nMoney & more'),
                      moreCard(
                          image: Constants.miniTV_Logo,
                          text: 'Watch Free\nShows & more'),
                      moreCard(
                          image: Constants.travelTicket_Logo,
                          text: 'Book Travel\ntickets'),
                      moreCard(
                          image: Constants.spinGame_Logo,
                          text: 'Play & win Prizes\neveryday')
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class moreCard extends StatelessWidget {
  const moreCard({super.key, required this.image, required this.text});
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.lightBlue.shade50,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade400)),
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 26,
            backgroundImage: AssetImage(image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
    );
  }
}
