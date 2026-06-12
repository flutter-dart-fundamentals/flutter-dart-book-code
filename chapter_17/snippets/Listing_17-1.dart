/* The Real-Time Text Display App
Listing 17-1: The real-time text display app with TextField and onChanged */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Input Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Bar at Top'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter hint text',
                ),
                onChanged: (value) {
                  setState(() {
                    _inputText = value;
                  });
                },
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 50,
            child: Text('You typed: $_inputText'),
          ),
        ],
      ),
    );
  }
}
