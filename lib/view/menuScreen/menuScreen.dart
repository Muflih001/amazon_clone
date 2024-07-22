import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/navBarScreen/navBarScreen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
      body: Stack(
        children: [
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 900,
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisExtent: 170,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    children: [
                      Categorycard(image: Constants.categoryimg1),
                      Categorycard(image: Constants.categoryimg2),
                      Categorycard(image: Constants.categoryimg3),
                      Categorycard(image: Constants.categoryimg4),
                      Categorycard(image: Constants.categoryimg5),
                      Categorycard(image: Constants.categoryimg6),
                      Categorycard(image: Constants.categoryimg7),
                      Categorycard(image: Constants.categoryimg8),
                      Categorycard(image: Constants.categoryimg9),
                      Categorycard(image: Constants.categoryimg10),
                      Categorycard(image: Constants.categoryimg11),
                      Categorycard(image: Constants.categoryimg12),
                      Categorycard(image: Constants.categoryimg13),
                      Categorycard(image: Constants.categoryimg14),
                      Categorycard(image: Constants.categoryimg15),
                      Categorycard(image: Constants.categoryimg16),
                      Categorycard(image: Constants.categoryimg17),
                      Categorycard(image: Constants.categoryimg18),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: ExpansionTile(
                    minTileHeight: 50.0,
                    shape: Border(bottom: BorderSide(color: Colors.white)),
                    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                    title: Text(
                      'Settings',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    children: [
                      ListTile(title: Text('Country & Language')),
                      ListTile(title: Text('Notifications')),
                      ListTile(title: Text('Alexa')),
                      ListTile(title: Text('Permisions')),
                      ListTile(title: Text('Default Purchase Settings')),
                      ListTile(title: Text('Legal & About')),
                      ListTile(title: Text('Switch Accounts')),
                      ListTile(title: Text('Sign Out')),
                      // Add more list tiles as needed
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text('Country & Language'),
                      //     Text('Notifications'),
                      //     Text('Alexa'),
                      //     Text('Permisions'),
                      //     Text('Default Purchase Settings'),
                      //     Text('Legal & About'),
                      //     Text('Switch Accounts'),
                      //     Text('Sign Out'),
                      //   ],
                      // ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 8.0, right: 8, top: 8, bottom: 8),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color:
                              Colors.grey.withOpacity(0.5), // color of shadow
                          spreadRadius: 1, // spread radius of the shadow
                          blurRadius: 7, // blur radius of the shadow
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Customer Service',
                          style: TextStyle(fontSize: 17, color: Colors.black),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 150,
                color: Colors.white,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 614.0),
            child: Container(
              height: 77,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(01.0), // color of shadow
                      spreadRadius: 1, // spread radius of the shadow
                      blurRadius: 7, // blur radius of the shadow
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 1),
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  menuContainer(text: 'Oders'),
                  menuContainer(text: 'Buy Again'),
                  menuContainer(text: 'Account'),
                  menuContainer(text: 'Lists')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Categorycard extends StatelessWidget {
  const Categorycard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (details) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => NavBarScreen(),
            ));
      },
      child: Container(
        height: 170,
        width: 90,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.teal)),
      ),
    );
  }
}

class menuContainer extends StatelessWidget {
  const menuContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 42,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Text(text),
        )),
      ),
    );
  }
}
