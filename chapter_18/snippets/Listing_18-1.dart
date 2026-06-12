/* Building a Static ListView
Listing 18-1: A static ListView with three ListTile items */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.access_alarm),
            title: const Text('Alarm'),
            subtitle: const Text('Alarm Subtitle'),
            trailing: const Icon(Icons.add),
            onTap: () {
              print('Alarm tapped');
            },
          ),
          ListTile(
            leading: const Icon(Icons.access_time),
            title: const Text('Time'),
            subtitle: const Text('Time Subtitle'),
            trailing: const Icon(Icons.add),
            onTap: () {
              print('Time tapped');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Circle'),
            subtitle: const Text('Circle Subtitle'),
            trailing: const Icon(Icons.add),
            onTap: () {
              print('Circle tapped');
            },
          ),
        ],
      ),
    );
  }
}
