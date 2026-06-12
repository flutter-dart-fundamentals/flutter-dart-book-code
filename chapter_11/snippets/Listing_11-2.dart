/* From Inline Code to a Widget Class
Listing 11-2: Refactoring the app into a custom StatelessWidget class */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App 1'),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.orange,
        body: Center(
          child: Text('Hello World Again with Stateless Widget'),
        ),
      ),
    );
  }
}
