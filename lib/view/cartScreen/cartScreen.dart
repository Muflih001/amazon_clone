import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/cartScreen/widgets/addtocart.dart';
import 'package:amazon_clone/view/cartScreen/widgets/saved%20.dart';
import 'package:flutter/material.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({super.key});

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 255, 235),
          title: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              width: 350,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.grey)),
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.qr_code_scanner_outlined),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.mic_none_outlined),
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                  hintText: 'Search Amazon.in',
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0, right: 5),
              child: Icon(Icons.qr_code_scanner),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'No items selected',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Text(
                              'EMI Available',
                              style: TextStyle(fontSize: 17),
                            ),
                          ),
                          Text(
                            'Details',
                            style: TextStyle(
                                fontSize: 17, color: Colors.teal[700]),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 25),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.yellow[500],
                              borderRadius: BorderRadius.circular(30)),
                          child: Center(
                            child: Text(
                              'Proceed to Buy (0 items)',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[300],
                        height: 10,
                        thickness: 2,
                      )
                    ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Select all items',
                  style: TextStyle(fontSize: 17, color: Colors.teal[700]),
                ),
              ),
              Addtocart(
                text1: 'iphone',
                text2: '29',
                text3: '50,000',
                text4: '60,000',
                image: Constants.product4,
              ),
              Addtocart(
                text1: 'Water filter',
                text2: '24',
                text3: '16,000',
                text4: '20,000',
                image: Constants.product8,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  color: Colors.grey[300],
                  height: 15,
                  thickness: 2,
                ),
              ),
              CircularContainewithText(),
              Divider(
                color: Colors.grey[200],
                height: 40,
                thickness: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Saved for later (1 item)',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
              ),
              SaveCard(
                  image: Constants.product3,
                  text1: 'Samsung A22 mobile\ncase',
                  text2: 'currently unavailable')
            ],
          ),
        ));
  }
}

class CircularContainewithText extends StatelessWidget {
  const CircularContainewithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          children: [
            Container(
              child: Image.asset(Constants.lock),
            ),
            Text(
              'Secure Payment',
              style: TextStyle(color: Colors.cyan[700]),
            )
          ],
        ),
        Column(
          children: [
            Container(
              child: Image.asset(Constants.delivery),
            ),
            Text(
              'Amazon Deliverd',
              style: TextStyle(color: Colors.cyan[700]),
            )
          ],
        ),
      ],
    );
  }
}
