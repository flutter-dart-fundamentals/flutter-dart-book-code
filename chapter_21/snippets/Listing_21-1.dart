/* The To-Do List App
Listing 21-1: The complete To-Do List app with add and delete */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do List',
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> _todos = ['task 1', 'task 2', 'task 3', 'task 4', 'task 5', 'task 8'];

  void _addTodoItems() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        String newToDo = '';
        return AlertDialog(
          title: const Text('Enter text here'),
          content: TextField(
            onChanged: (value) {
              newToDo = value;
            },
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Save'),
              onPressed: () {
                setState(() {
                  _todos.add(newToDo);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('To Do List')),
      body: ListView.builder(
        itemCount: _todos.length,
        itemBuilder: (BuildContext context, int index) {
          final todo = _todos[index];
          return ListTile(
            leading: const Icon(Icons.check_circle_outline),
            title: Text(todo),
            subtitle: const Text('Tap the trash icon to delete'),
            trailing: IconButton(
              icon: const Icon(Icons.delete_outline),
              onPressed: () {
                setState(() {
                  _todos.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodoItems,
        child: const Icon(Icons.add),
      ),
    );
  }
}
