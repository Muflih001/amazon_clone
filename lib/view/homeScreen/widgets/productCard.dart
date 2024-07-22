import 'package:flutter/material.dart';

class Productcard extends StatelessWidget {
  const Productcard(
      {super.key,
      required this.productImage,
      this.actualPrice,
      this.offerPrice,
      this.producName = '',
      this.persentage});
  final String producName;
  final String? offerPrice;
  final String? actualPrice;
  final int? persentage;
  final String productImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 175,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: Image.asset(productImage)),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Container(
                height: 30,
                width: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 255, 17, 0),
                    borderRadius: BorderRadius.circular(3)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "$persentage%",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      ' off',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Limited time deal',
                  style:
                      TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Text(
            '$offerPrice',
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          Text(
            'M.R.P: $actualPrice',
            style: TextStyle(),
          ),
          Text(
            producName,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
