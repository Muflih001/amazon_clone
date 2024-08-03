import 'package:amazon_clone/utils/constants/constants.dart';
import 'package:amazon_clone/view/languageselection/LanguageSelectionScreen.dart';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Languageselectionscreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 180,
        width: 180,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(Constants.Splash_Logo)),
            borderRadius: BorderRadius.circular(40)),
      )),
    );
  }
}
