/* Complete Example: All Data Types
Listing 27-1: Saving and loading every SharedPreferences data type */

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: SharedPrefsDemo(),
  ));
}

class SharedPrefsDemo extends StatefulWidget {
  @override
  _SharedPrefsDemoState createState() => _SharedPrefsDemoState();
}

class _SharedPrefsDemoState extends State<SharedPrefsDemo> {
  bool? isLoggedIn;
  int? age;
  double? height;
  String? name;
  List<String>? favoriteColors;

  @override
  void initState() {
    super.initState();
    _initPrefs();
  }

  Future<void> _initPrefs() async {
    await _saveData();
    await _loadData();
  }

  Future<void> _saveData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    await prefs.setInt('age', 30);
    await prefs.setDouble('height', 5.9);
    await prefs.setString('name', 'Sami');
    await prefs.setStringList('favoriteColors', ['blue', 'green', 'red']);
  }

  Future<void> _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      isLoggedIn = prefs.getBool('isLoggedIn');
      age = prefs.getInt('age');
      height = prefs.getDouble('height');
      name = prefs.getString('name');
      favoriteColors = prefs.getStringList('favoriteColors');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SharedPreferences Example')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: isLoggedIn == null
          ? CircularProgressIndicator()
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Logged In: $isLoggedIn'),
                Text('Age: $age'),
                Text('Height: $height'),
                Text('Name: $name'),
                Text('Favorite Colors: ${favoriteColors?.join(", ")}'),
              ],
            ),
      ),
    );
  }
}
