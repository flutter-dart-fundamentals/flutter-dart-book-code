/* Step 3: Use AssetImage in Your Code
Listing 12-2: Displaying a local asset image with AssetImage */

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
          title: Text('Local Image'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.orange,
        body: Center(
          child: Image(
            image: AssetImage('images/cat.png'),
          ),
        ),
      ),
    );
  }
}
