import 'package:amazon_clone/view/splashScreen/splashScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SplashScreen());
  }
}
// import 'package:flutter/material.dart';

// void main() => runApp(const BottomSheetExampleApp());

// class BottomSheetExampleApp extends StatelessWidget {
//   const BottomSheetExampleApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Bottom Sheet Sample')),
//         body: const BottomSheetExample(),
//       ),
//     );
//   }
// }

// enum AnimationStyles { defaultStyle, custom, none }

// class BottomSheetExample extends StatefulWidget {
//   const BottomSheetExample({super.key});

//   @override
//   State<BottomSheetExample> createState() => _BottomSheetExampleState();
// }

// class _BottomSheetExampleState extends State<BottomSheetExample> {
//   AnimationStyle? _animationStyle;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           ElevatedButton(
//             child: const Text('showBottomSheet'),
//             onPressed: () {
//               _animationStyle = AnimationStyle(
//                 duration: const Duration(seconds: 3),
//                 reverseDuration: const Duration(seconds: 2),
//               );
//               showBottomSheet(
//                 context: context,
//                 sheetAnimationStyle: _animationStyle,
//                 builder: (BuildContext context) {
//                   return SizedBox.expand();
//                 },
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
