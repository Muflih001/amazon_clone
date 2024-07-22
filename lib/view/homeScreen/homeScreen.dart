import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/homeScreen/Sections/amazonpayRowSection.dart';
import 'package:amazon_clone/view/homeScreen/Sections/dealsCard.dart';
import 'package:amazon_clone/view/homeScreen/widgets/carouselWidget.dart';
import 'package:amazon_clone/view/homeScreen/widgets/categorySection.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
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
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 50,
            color: Color.fromARGB(255, 133, 255, 245),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.location_on_outlined,
                      size: 30,
                    )),
                Text('Deliver to Muflih.....- Mannarkkad 678583'),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_down_outlined))
              ],
            ),
          ),
          Categorysection(),
          Stack(
            children: [
              Container(
                height: 490,
                // width: double.infinity,
                child: Column(
                  children: [
                    Carouselwidget(),
                    Container(
                      height: 130,
                      width: double.infinity,
                      color: Color.fromARGB(255, 173, 224, 241),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 250,
                left: 150,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  for (int i = 0; i < 10; i++)
                    Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == i
                            ? Color.fromRGBO(0, 0, 0, 0.9)
                            : Color.fromRGBO(0, 0, 0, 0.4),
                      ),
                    ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 285.0, left: 5),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Positioned(child: Amazonpayrowsection())),
              ),
            ],
          ),
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(Constants.promotionimg4),
                    fit: BoxFit.fill)),
          ),
          Dealscard(
            title: 'Top deals with exchange',
            productImage1: Constants.product4,
            persentage1: 19,
            offerPrice1: '48,799',
            actualPrice1: '59,900',
            producName1: 'Apple iphone 13 (128',
            productImage2: Constants.product5,
            persentage2: 26,
            offerPrice2: '11,499',
            actualPrice2: '15,499',
            producName2: 'iQOO Z9 Lite 5G (Aq',
            productImage3: Constants.product7,
            persentage3: 30,
            offerPrice3: '18,998',
            actualPrice3: '26,999',
            producName3: 'Realme NARZO 70 ',
            productImage4: Constants.product6,
            persentage4: 18,
            offerPrice4: '19,999',
            actualPrice4: '24,499',
            producName4: 'Samsung Galaxy M35',
          ),
          Dealscard(
            title: 'Blockbuster deals',
            productImage1: Constants.product8,
            persentage1: 35,
            offerPrice1: '15,999',
            actualPrice1: '24,500',
            producName1: 'KENT Supreme Alkali',
            productImage2: Constants.product10,
            persentage2: 52,
            offerPrice2: '11,999',
            actualPrice2: '24,499',
            producName2: 'HUL Pureit Eco Water',
            productImage3: Constants.product11,
            persentage3: 37,
            offerPrice3: '16,999',
            actualPrice3: '27,999',
            producName3: 'Aquaguard Marvel N',
            productImage4: Constants.product18,
            persentage4: 48,
            offerPrice4: '749',
            actualPrice4: '1,440',
            producName4: 'Solimo-NON STICK',
          )
        ],
      ),
    );
  }
}
