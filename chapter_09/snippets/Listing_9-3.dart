/* Centering Content
Listing 9-3: Centering content with the Center widget */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Text('Hello from MaterialApp!'),
      ),
    ),
  ));
}
