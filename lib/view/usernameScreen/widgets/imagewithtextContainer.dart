import 'package:amazon_clone/view/usernameScreen/widgets/imageContainer.dart';
import 'package:flutter/material.dart';

class Imagewithtextcontainer extends StatelessWidget {
  const Imagewithtextcontainer({
    super.key,
    required this.imgae,
    this.title = '',
    this.subtitle = '',
  });
  final String imgae;

  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        height: 160,
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Imagecontainer(imgae: imgae, heigth: 120, width: 120),
            Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            Text(subtitle)
          ],
        ),
      ),
    );
  }
}
