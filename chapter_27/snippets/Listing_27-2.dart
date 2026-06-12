/* Interactive Example: Save and Load a Name
Listing 27-2: Saving and loading a name with TextEditingController and SharedPreferences */

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() => runApp(MaterialApp(home: SimplePrefsApp()));

class SimplePrefsApp extends StatefulWidget {
  @override
  _SimplePrefsAppState createState() => _SimplePrefsAppState();
}

class _SimplePrefsAppState extends State<SimplePrefsApp> {
  String? name = 'Loading...';
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadName();
  }

  Future<void> _loadName() async {
    final prefs = await SharedPreferences.getInstance();
    final savedName = prefs.getString('name');
    setState(() {
      name = savedName ?? 'No name saved yet';
    });
  }

  Future<void> _saveName() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', controller.text);
    _loadName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SharedPreferences Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Saved Name: $name'),
            TextField(
              controller: controller,
              decoration: InputDecoration(labelText: 'Enter your name'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: _saveName,
              child: Text('Save Name'),
            ),
          ],
        ),
      ),
    );
  }
}
