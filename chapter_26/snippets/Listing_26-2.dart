/* Real API Example 2: Random User Profile
Listing 26-2: The random user app: parsing nested JSON fields */

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random User Profile',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = '';
  String email = '';
  String location = '';
  String imageUrl = '';
  bool isLoading = false;

  Future<void> fetchUser() async {
    setState(() => isLoading = true);
    final response = await http.get(Uri.parse('https://randomuser.me/api/'));
    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      final user = data['results'][0];
      setState(() {
        name = "${user['name']['first']} ${user['name']['last']}";
        email = user['email'];
        location = "${user['location']['city']}, ${user['location']['country']}";
        imageUrl = user['picture']['large'];
        isLoading = false;
      });
    } else {
      setState(() {
        name = 'Error loading user';
        email = '';
        location = '';
        imageUrl = '';
        isLoading = false;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Random User Profile')),
      body: Center(
        child: isLoading
          ? CircularProgressIndicator()
          : Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(imageUrl),
                  ),
                  SizedBox(height: 20),
                  Text('Name: $name', style: TextStyle(fontSize: 20)),
                  Text('Email: $email', style: TextStyle(fontSize: 16)),
                  Text('Location: $location', style: TextStyle(fontSize: 16)),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: fetchUser,
                    child: Text('Fetch New User'),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
