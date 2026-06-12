/* Your First Interactive App
Listing 14-1: Detecting a tap with GestureDetector and printing to the console */

import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: GestureDetector(
            onTap: () {
              print('You tapped the text!');
            },
            child: Text(
              'Click me',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
