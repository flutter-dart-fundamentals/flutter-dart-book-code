/* From Inline Code to a Widget Class
Listing 11-1: A complete app written inline inside main() */

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('App 1')),
      body: Center(child: Text('Hello World')),
    ),
  ));
}
