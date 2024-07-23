import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/usernameScreen/widgets/imageContainer.dart';
import 'package:amazon_clone/view/usernameScreen/widgets/imagewithtextContainer.dart';
import 'package:amazon_clone/view/usernameScreen/widgets/rectangleContainer.dart';
import 'package:amazon_clone/view/usernameScreen/widgets/rectangleContainer2.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Usernamescreen extends StatelessWidget {
  const Usernamescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 20, 255, 235),
        title: Row(
          children: [
            Container(
              height: 30,
              width: 100,
              child: Image.asset(Constants.Amazon_Logo),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                '.in',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
        actions: [
          Icon(
            Icons.notifications_outlined,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(232, 144, 174, 171),
                    child: Icon(
                      UniconsLine.user,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Hello,',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text('MuflihPattisseeri', style: TextStyle()),
                  Icon(
                    Icons.keyboard_arrow_down,
                    size: 29,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 105.0),
                    child: Container(
                      height: 18,
                      child: Image.asset(Constants.flag),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text('EN'),
                ],
              ),
            ),
            Container(
              height: 140,
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.only(left: 10, right: 10, top: 12),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 58),
                children: [
                  Rectanglecontainer(text: 'Your Orders'),
                  Rectanglecontainer(text: 'Buy Again'),
                  Rectanglecontainer(text: 'Your Account'),
                  Rectanglecontainer(text: 'Your Lists')
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Orders',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('See all  ',
                      style: TextStyle(
                        color: Colors.blue,
                      ))
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Imagecontainer(
                      imgae: Constants.mobile,
                      heigth: 150.0,
                      width: 200.0,
                    ),
                    Imagecontainer(
                      imgae: Constants.pay,
                      heigth: 150.0,
                      width: 200.0,
                    ),
                    Imagecontainer(
                      imgae: Constants.mobile,
                      heigth: 150.0,
                      width: 200.0,
                    ),
                    Imagecontainer(
                      imgae: Constants.dth,
                      heigth: 150.0,
                      width: 200.0,
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 5,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text('Edit  ',
                          style: TextStyle(
                            color: Colors.blue,
                          )),
                      Container(
                        width: 2,
                        height: 15,
                        color: Colors.grey,
                      ),
                      Text('   Browsing history  ',
                          style: TextStyle(
                            color: Colors.blue,
                          )),
                    ],
                  )
                ],
              ),
            ),
            Center(
              child: Container(
                height: 350,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 170),
                    children: [
                      Imagewithtextcontainer(
                        imgae: Constants.product4,
                        title: 'Smartphones & ',
                        subtitle: '2 viewed',
                      ),
                      Imagewithtextcontainer(
                        imgae: Constants.product3,
                        title: 'Mobile case',
                        subtitle: '2 viewed',
                      ),
                      Imagewithtextcontainer(
                        imgae: Constants.product1,
                        title: 'Galaxy Tab Case',
                        subtitle: '2 viewed',
                      ),
                      Imagewithtextcontainer(
                        imgae: Constants.product9,
                        title: 'Womens Penda',
                        subtitle: '2 viewed',
                      ),
                      Imagewithtextcontainer(
                        imgae: Constants.product2,
                        title: 'Cloths and Tow',
                        subtitle: '2 viewed',
                      ),
                      Imagewithtextcontainer(
                        imgae: Constants.product8,
                        title: 'Water filter',
                        subtitle: '2 viewed',
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 5,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Buy Again',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('See all  ',
                      style: TextStyle(
                        color: Colors.blue,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Imagecontainer(
                  imgae: Constants.product2, heigth: 150, width: 150),
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 5,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Text(
                'Your Lists',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10, bottom: 5),
              child: Text(
                'You have not created any list.',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 2),
              child: Rectanglecontainer2(
                  text: 'Create a List', height: 60, width: double.infinity),
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 5,
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Account',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text('See all  ',
                      style: TextStyle(
                        color: Colors.blue,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Rectanglecontainer2(
                      text: 'Your Orders',
                      height: 60,
                    ),
                    Rectanglecontainer2(
                      text: 'Your Addresses',
                      height: 60,
                    ),
                    Rectanglecontainer2(
                      text: 'Top-up your Amazon Pay Wallet',
                      height: 60,
                    ),
                    Rectanglecontainer2(
                      text: 'Your Amazon Pay balance statement',
                      height: 60,
                    ),
                    Rectanglecontainer2(
                      text: 'Amazon Pay UPI',
                      height: 60,
                    ),
                    Rectanglecontainer2(
                      text: 'Manage Your Profiles',
                      height: 60,
                    ),
                    Rectanglecontainer2(
                      text: 'Your Orders',
                      height: 60,
                    ),
                    Rectanglecontainer2(
                      text: 'Your Orders',
                      height: 60,
                    )
                  ],
                ),
              ),
            ),
            Divider(
              color: Colors.grey[400],
              thickness: 5,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
