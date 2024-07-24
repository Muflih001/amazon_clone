import 'package:amazon_clone/view/loginScreen/loginScreen1.dart';
import 'package:flutter/material.dart';

class Languageselectionscreen extends StatefulWidget {
  const Languageselectionscreen({super.key});

  @override
  State<Languageselectionscreen> createState() =>
      _LanguageselectionscreenState();
}

class _LanguageselectionscreenState extends State<Languageselectionscreen> {
  int _selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose your language',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 400,
                  width: double.infinity,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        mainAxisExtent: 85),
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 0;
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            border: _selectedIndex == 0
                                ? Border.all(color: Colors.blue, width: 2)
                                : null,
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.blue[100],
                          ),
                          child: Center(
                            child: Text('English'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 1;
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            border: _selectedIndex == 1
                                ? Border.all(color: Colors.pink, width: 2)
                                : null,
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.pink[100],
                          ),
                          child: Center(
                            child: Text('English'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 2;
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            border: _selectedIndex == 2
                                ? Border.all(color: Colors.orange, width: 2)
                                : null,
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.orange[100],
                          ),
                          child: Center(
                            child: Text('English'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 3;
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            border: _selectedIndex == 3
                                ? Border.all(color: Colors.green, width: 2)
                                : null,
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.green[100],
                          ),
                          child: Center(
                            child: Text('English'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 4;
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            border: _selectedIndex == 4
                                ? Border.all(color: Colors.redAccent, width: 2)
                                : null,
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.redAccent[100],
                          ),
                          child: Center(
                            child: Text('English'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 5;
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            border: _selectedIndex == 5
                                ? Border.all(color: Colors.blueGrey, width: 2)
                                : null,
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.blueGrey[100],
                          ),
                          child: Center(
                            child: Text('English'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 6;
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            border: _selectedIndex == 6
                                ? Border.all(color: Colors.indigo, width: 2)
                                : null,
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.indigo[100],
                          ),
                          child: Center(
                            child: Text('English'),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _selectedIndex = 7;
                          });
                        },
                        child: Container(
                          height: 75,
                          width: 150,
                          decoration: BoxDecoration(
                            border: _selectedIndex == 7
                                ? Border.all(color: Colors.yellow, width: 2)
                                : null,
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.yellow[100],
                          ),
                          child: Center(
                            child: Text('English'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (_selectedIndex != -1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Loginscreen1()),
                      );
                    } else {
                      // Show an error message or a toast to inform the user to select a language
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Please select a language')),
                      );
                    }
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(child: Text('Continue')),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




// import 'package:amazon_clone/view/loginScreen/loginScreen1.dart';
// import 'package:flutter/material.dart';

// class Languageselectionscreen extends StatefulWidget {
//   const Languageselectionscreen({super.key});

//   @override
//   State<Languageselectionscreen> createState() =>
//       _LanguageselectionscreenState();
// }

// class _LanguageselectionscreenState extends State<Languageselectionscreen> {
//   bool _isSelected = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Container(
//             child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Choose your language',
//               style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//             Container(
//               height: 400,
//               width: double.infinity,
//               child: GridView(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                     mainAxisExtent: 85),
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         _isSelected = !_isSelected;
//                       });
//                     },
//                     child: Container(
//                       height: 75,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           border: _isSelected
//                               ? Border.all(color: Colors.blue, width: 2)
//                               : null,
//                           borderRadius: BorderRadius.circular(7),
//                           color: Colors.blue[100]),
//                       child: Center(
//                         child: Text('English'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         _isSelected = !_isSelected;
//                       });
//                     },
//                     child: Container(
//                       height: 75,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           border: _isSelected
//                               ? Border.all(color: Colors.pink, width: 2)
//                               : null,
//                           borderRadius: BorderRadius.circular(7),
//                           color: Colors.pink[100]),
//                       child: Center(
//                         child: Text('English'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         _isSelected = !_isSelected;
//                       });
//                     },
//                     child: Container(
//                       height: 75,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           border: _isSelected
//                               ? Border.all(color: Colors.orange, width: 2)
//                               : null,
//                           borderRadius: BorderRadius.circular(7),
//                           color: Colors.orange[100]),
//                       child: Center(
//                         child: Text('English'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         _isSelected = !_isSelected;
//                       });
//                     },
//                     child: Container(
//                       height: 75,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           border: _isSelected
//                               ? Border.all(color: Colors.green, width: 2)
//                               : null,
//                           borderRadius: BorderRadius.circular(7),
//                           color: Colors.green[100]),
//                       child: Center(
//                         child: Text('English'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         _isSelected = !_isSelected;
//                       });
//                     },
//                     child: Container(
//                       height: 75,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           border: _isSelected
//                               ? Border.all(color: Colors.pinkAccent, width: 2)
//                               : null,
//                           borderRadius: BorderRadius.circular(7),
//                           color: Colors.pinkAccent[100]),
//                       child: Center(
//                         child: Text('English'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         _isSelected = !_isSelected;
//                       });
//                     },
//                     child: Container(
//                       height: 75,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           border: _isSelected
//                               ? Border.all(color: Colors.blueGrey, width: 2)
//                               : null,
//                           borderRadius: BorderRadius.circular(7),
//                           color: Colors.blueGrey[100]),
//                       child: Center(
//                         child: Text('English'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         _isSelected = !_isSelected;
//                       });
//                     },
//                     child: Container(
//                       height: 75,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           border: _isSelected
//                               ? Border.all(color: Colors.indigoAccent, width: 2)
//                               : null,
//                           borderRadius: BorderRadius.circular(7),
//                           color: Colors.indigoAccent[100]),
//                       child: Center(
//                         child: Text('English'),
//                       ),
//                     ),
//                   ),
//                   InkWell(
//                     onTap: () {
//                       setState(() {
//                         _isSelected = !_isSelected;
//                       });
//                     },
//                     child: Container(
//                       height: 75,
//                       width: 150,
//                       decoration: BoxDecoration(
//                           border: _isSelected
//                               ? Border.all(color: Colors.yellow, width: 2)
//                               : null,
//                           borderRadius: BorderRadius.circular(7),
//                           color: Colors.yellow[100]),
//                       child: Center(
//                         child: Text('English'),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//           ],
//         )),
//       )),
//     );
//   }
// }
