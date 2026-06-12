/* Row: Horizontal Layout
Listing 13-1: Three containers arranged horizontally with Row */

import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('Rows and Columns')),
      body: MyWidget(),
    ),
  ));
}
class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.green),
        Container(width: 100, height: 100, color: Colors.black),
      ],
    );
  }
}
