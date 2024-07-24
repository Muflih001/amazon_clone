import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/cartScreen/cartScreen.dart';
import 'package:amazon_clone/view/homeScreen/homeScreen.dart';
import 'package:amazon_clone/view/menuScreen/menuScreen.dart';
import 'package:amazon_clone/view/moreScreen/moreScreen.dart';
import 'package:amazon_clone/view/usernameScreen/usernameScreen.dart';
import 'package:flutter/material.dart';

class NavBarScreen extends StatefulWidget {
  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen>
    with TickerProviderStateMixin {
  var selectedIndex = 0;
  List<Widget> myScreens = [
    Homescreen(),
    Usernamescreen(),
    Homescreen(),
    Cartscreen(),
    MenuScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myScreens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
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
                    showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        isScrollControlled: true,
                        // Make the barrier transparent
                        transitionAnimationController: AnimationController(
                          duration: const Duration(
                              milliseconds: 300), // Set the animation duration
                          vsync: this,
                        ),
                        builder: (context) => Morescreen());
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 3),
                    height: 27,
                    width: 22,
                    child: Image.asset(Constants.moreicon),
                  )),
              label: 'More'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu')
        ],
      ),
    );
  }
}
