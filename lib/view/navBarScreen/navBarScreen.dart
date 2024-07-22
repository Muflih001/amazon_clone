import 'package:amazon_clone/view/homeScreen/homeScreen.dart';
import 'package:amazon_clone/view/menuScreen/menuScreen.dart';
import 'package:amazon_clone/view/moreScreen/moreScreen.dart';
import 'package:amazon_clone/view/usernameScreen/usernameScreen.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  var selectedIndex = 0;
  List<Widget> myScreens = [
    Homescreen(),
    Usernamescreen(),
    Homescreen(),
    Container(
      color: Colors.yellow,
    ),
    MenuScreen(),
  ];
  bool _showMoreContainer = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          myScreens[selectedIndex],
          _showMoreContainer ? Morescreen() : Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'You'),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    setState(() {
                      _showMoreContainer = !_showMoreContainer;
                    });
                  },
                  child: Icon(Icons.video_collection_outlined)),
              label: 'More'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu')
        ],
      ),
    );
  }
}
