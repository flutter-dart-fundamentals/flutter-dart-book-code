/* Why You Need Scaffold
Listing 9-2: Wrapping the Text widget in a Scaffold */

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Text('Hello from MaterialApp!'),
      ),
    ),
  );
}
