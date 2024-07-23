import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/amazonPayScreen/widgets/Rewardscard.dart';
import 'package:amazon_clone/view/amazonPayScreen/widgets/quickActioncontainer.dart';
import 'package:amazon_clone/view/amazonPayScreen/widgets/singlelineSections.dart';
import 'package:amazon_clone/view/amazonPayScreen/widgets/upiContainer.dart';
import 'package:flutter/material.dart';

class Amazonepayscreen extends StatelessWidget {
  const Amazonepayscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        centerTitle: true,
        title: Container(
          height: 25,
          child: Image.asset(Constants.blackAmazonePay),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Constants.yellow), fit: BoxFit.fill)),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, right: 10, bottom: 24),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: Colors.grey), // default grey border
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(
                              color: Colors.grey), // default grey border
                        ),
                        hintText: 'Search Amazon Pay',
                        prefixIcon: Icon(Icons.search),
                        focusColor: Colors.grey),
                  ),
                ),
              ),
            ),
            UpicontainerSection(),
            SizedBox(
              height: 10,
            ),
            QuickAccessContainer(),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            Container(
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'Reveal your Scratch cards',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 19),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      RewardCard(text: '     Expire on\n31 Jul 1:59 PM'),
                      RewardCard(text: '     Expire on\n31 Jul 1:59 PM'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      height: 45,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'View all',
                              style: TextStyle(color: Colors.cyan[700]),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                              color: Colors.cyan[700],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Recharge',
                image1: Constants.mobileRecharge,
                text1: 'Mobile\nRecharge',
                text2: 'DTH\nRecharge',
                text3: 'Google Play\nRecharge',
                text4: 'App Store\nCode',
                image2: Constants.dth,
                image3: Constants.playstore,
                image4: Constants.appstore),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Pay Bills',
                image1: Constants.electricity,
                text1: 'Electricity',
                text2: 'Book Gass\nCylinder',
                text3: 'Credit Card\n Bill',
                text4: 'Mobile\n Postpaid',
                image2: Constants.gass,
                image3: Constants.credit,
                image4: Constants.postpaid),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Daily Transit',
                image1: Constants.fasttag,
                text1: 'Buy Fastag',
                text2: 'Fastag\nRecharge',
                text3: 'Metro\nRecharge',
                text4: 'Delhi Metro\nQr Ticket',
                image2: Constants.fasttag2,
                image3: Constants.metro1,
                image4: Constants.metro2),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Giftcards & Vouchers',
                image1: Constants.giftcard,
                text1: 'Add a Gift\nCard',
                text2: 'All Gift Cards',
                text3: 'Amazon\nVouchers',
                text4: 'Brand Gift\nCards',
                image2: Constants.giftcard1,
                image3: Constants.giftcard2,
                image4: Constants.giftcard3),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Travel',
                image1: Constants.flight,
                text1: 'Flights',
                text2: 'hotels',
                text3: 'Bus',
                text4: 'Trins',
                image2: Constants.hotel,
                image3: Constants.bus,
                image4: Constants.train),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Insurance',
                image1: Constants.car,
                text1: 'Car Insurance',
                text2: 'Bike Insurance',
                text3: 'Mutual Funds',
                text4: 'Insurence|n Premium',
                image2: Constants.bike,
                image3: Constants.investment,
                image4: Constants.insurance),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Investments',
                image1: Constants.investment1,
                text1: 'Digital Gold',
                text2: 'Fixed deposit',
                text3: 'Mutual Funds',
                text4: 'investment',
                image2: Constants.investment2,
                image3: Constants.investment3,
                image4: Constants.investment),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Entertinment',
                image1: Constants.movie2,
                text1: 'Movies',
                text2: 'PVR',
                text3: 'INOX',
                text4: 'Cinepolic',
                image2: Constants.pvr,
                image3: Constants.inox,
                image4: Constants.cinepolic),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
            SingleLineSection(
                title: 'Stores Near You',
                image1: Constants.explore,
                text1: 'Explore All',
                text2: 'Restaurent',
                text3: 'fashion',
                text4: 'Electronics',
                image2: Constants.credit,
                image3: Constants.fashion_Logo,
                image4: Constants.electronics),
            Divider(
              height: 10,
              thickness: 10,
              color: Colors.grey[200],
            ),
          ],
        )),
      ),
    );
  }
}
