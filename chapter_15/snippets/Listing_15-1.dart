/* The Color Toggle App
Listing 15-1: The color toggle app: a StatefulWidget with setState() */

import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onTap: () {
            if (isButtonPressed) {
              setState(() {
                isButtonPressed = false;
              });
              print('True, you have clicked isButtonPressed = $isButtonPressed');
            } else {
              setState(() {
                isButtonPressed = true;
              });
              print('False, you have clicked isButtonPressed = $isButtonPressed');
            }
          },
          child: Container(color: getColor()),
        ),
      ),
    );
  }

  Color getColor() {
    print('getColor() called');
    if (isButtonPressed) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
