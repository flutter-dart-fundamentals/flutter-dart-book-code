/* Async Programming in Flutter
Listing 25-5: Loading async data in Flutter with initState() and setState() */

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String data = 'Loading...';

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 3));
    return 'Data fetched from network!';
  }

  @override
  void initState() {
    super.initState();
    fetchAndDisplayData();
  }

  Future<void> fetchAndDisplayData() async {
    String fetchedData = await fetchData();
    setState(() {
      data = fetchedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Async Programming in Flutter'),
      ),
      body: Center(
        child: Text(data,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
