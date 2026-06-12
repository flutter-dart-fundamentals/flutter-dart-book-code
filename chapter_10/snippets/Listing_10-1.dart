/* Building a Complete Screen
Listing 10-1: A complete screen with an AppBar and centered body */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('App 1'),
      ),
      body: Center(
        child: Text('Hello World Again'),
      ),
    ),
  ));
}
