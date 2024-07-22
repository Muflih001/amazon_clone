import 'package:amazon_clone/utils/constants/constants.dart';
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
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
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
                  Text(
                    'Happy Prime Day,',
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
                  Row(children: [Icon(Icons.flag), Text('EN')])
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
