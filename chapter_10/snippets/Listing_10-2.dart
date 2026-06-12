/* Putting It All Together
Listing 10-2: A polished app combining MaterialApp properties, a theme, and AppBar options */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'My Flutter App',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorSchemeSeed: Colors.teal,
    ),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Welcome'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
  ));
}
