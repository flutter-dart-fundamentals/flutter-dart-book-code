/* Adopting the Canonical App Structure
Listing 15-2: The color toggle app in the canonical MyApp and MyHomePage structure */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Toggle',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            isButtonPressed = !isButtonPressed;
          });
        },
        child: Container(color: getColor()),
      ),
    );
  }

  Color getColor() {
    if (isButtonPressed) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }
}
