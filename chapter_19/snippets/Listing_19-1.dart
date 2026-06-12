/* Building a Dynamic List
Listing 19-1: A dynamic list with ListView.builder and a MenuItem data class */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MenuItem {
  final IconData icon;
  final String title;

  MenuItem(this.icon, this.title);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView.builder Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<MenuItem> items = [
    MenuItem(Icons.access_alarm, 'Alarm'),
    MenuItem(Icons.access_time, 'Time'),
    MenuItem(Icons.account_circle, 'Profile'),
    MenuItem(Icons.home, 'Home'),
    MenuItem(Icons.settings, 'Settings'),
    MenuItem(Icons.email, 'Email'),
    MenuItem(Icons.phone, 'Phone'),
    MenuItem(Icons.message, 'Messages'),
    MenuItem(Icons.photo, 'Photos'),
    MenuItem(Icons.music_note, 'Music'),
    MenuItem(Icons.video_library, 'Videos'),
    MenuItem(Icons.folder, 'Files'),
    MenuItem(Icons.shopping_cart, 'Shopping'),
    MenuItem(Icons.favorite, 'Favorites'),
    MenuItem(Icons.star, 'Starred'),
    MenuItem(Icons.bookmark, 'Bookmarks'),
    MenuItem(Icons.calendar_today, 'Calendar'),
    MenuItem(Icons.map, 'Maps'),
    MenuItem(Icons.location_on, 'Location'),
    MenuItem(Icons.cloud, 'Cloud'),
    MenuItem(Icons.download, 'Downloads'),
    MenuItem(Icons.notifications, 'Notifications'),
    MenuItem(Icons.lock, 'Privacy'),
    MenuItem(Icons.help, 'Help'),
    MenuItem(Icons.info, 'About'),
    MenuItem(Icons.search, 'Search'),
    MenuItem(Icons.print, 'Print'),
    MenuItem(Icons.share, 'Share'),
    MenuItem(Icons.language, 'Language'),
    MenuItem(Icons.logout, 'Sign Out'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView.builder Example'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(items[index].icon),
            title: Text(items[index].title),
            subtitle: Text('${items[index].title} Subtitle'),
            trailing: const Icon(Icons.add),
            onTap: () {
              print('${items[index].title} tapped');
            },
          );
        },
      ),
    );
  }
}
