import 'package:amazon_clone/view/usernameScreen/widgets/rectangleContainer.dart';
import 'package:amazon_clone/view/usernameScreen/widgets/rectangleContainer2.dart';
import 'package:flutter/material.dart';

class SaveCard extends StatelessWidget {
  const SaveCard({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,

    //  required this.text5,
  });
  final String image;
  final String text1;
  final String text2;

  //final String text5;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 275,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade50,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
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
                          text2,
                          style: TextStyle(
                              color: Colors.red[700],
                              fontWeight: FontWeight.w500),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 38.0),
                          child: Rectanglecontainer(
                            text: '   See similsr items   ',
                            height: 45,
                            width: 220,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5),
              child: Rectanglecontainer(
                text: '   Delete   ',
                height: 45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
