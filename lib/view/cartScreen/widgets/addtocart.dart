import 'package:amazon_clone/view/usernameScreen/widgets/rectangleContainer.dart';
import 'package:amazon_clone/view/usernameScreen/widgets/rectangleContainer2.dart';
import 'package:flutter/material.dart';

class Addtocart extends StatelessWidget {
  const Addtocart({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    //  required this.text5,
  });
  final String image;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  //final String text5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 500,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade50,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Container(
                      height: 180,
                      width: 120,
                      decoration: BoxDecoration(
                          // image: DecorationImage(
                          //     image: AssetImage(image), fit: BoxFit.fill)
                          ),
                      child: Image.asset(image),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text1,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          '3k+ bought in past month',
                          style: TextStyle(),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 25,
                              width: 50,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                color: Colors.red[900],
                              ),
                              child: Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '$text2%',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'off',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Limited time deal',
                              style: TextStyle(
                                  color: Colors.red[900],
                                  fontWeight: FontWeight.w800,
                                  fontSize: 11),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '₹$text3',
                              style: TextStyle(
                                  fontSize: 21,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'M.R.P:',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[700]),
                                ),
                                Text(
                                  "   ₹$text4",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // Text(
                        //   text5,
                        //   style: TextStyle(fontSize: 18),
                        // ),
                        Text(
                          'See offer & discounts >',
                          style: TextStyle(
                              color: Colors.cyan[700],
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Eligible for free shipping',
                          style:
                              TextStyle(fontSize: 14, color: Colors.grey[700]),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'In stock',
                          style: TextStyle(
                              color: Colors.green[700],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Colour:Black',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '7 days ServieceCenterReplacement',
                          style: TextStyle(
                              color: Colors.cyan[700],
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Buy more Save more,Get upto\n\$30 cashback >',
                          style: TextStyle(
                              color: Colors.cyan[700],
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '₹2,000.00 Discount Coupon \nwill be applied at checkout.',
                          style: TextStyle(
                              color: Colors.green[700],
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, top: 16),
                  child: Container(
                    height: 40,
                    width: 140,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[100],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.delete_outlined),
                        Center(
                          child: Container(
                            height: 45,
                            width: 60,
                            decoration: BoxDecoration(
                                border: Border(
                                    left: BorderSide(color: Colors.grey),
                                    right: BorderSide(color: Colors.grey)),
                                color: Colors.white),
                            child: Center(
                              child: Text(
                                '1',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.teal[700]),
                              ),
                            ),
                          ),
                        ),
                        Icon(Icons.add)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, top: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Rectanglecontainer(
                            text: '   Delete   ',
                            height: 45,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Rectanglecontainer(
                            text: '   Save for later   ',
                            height: 45,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Rectanglecontainer(
                        text: '   See more like this   ',
                        height: 45,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
