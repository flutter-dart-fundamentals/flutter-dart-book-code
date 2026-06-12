/* Loading Images from the Network
Listing 12-1: Loading and displaying a network image */

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
          title: Text('Network Image'),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.orange,
        body: Center(
          child: Image(
            image: NetworkImage(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
          ),
        ),
      ),
    );
  }
}
