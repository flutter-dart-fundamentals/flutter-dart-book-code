/* Key Concepts to Watch For
Listing 8-2: A minimal widget class that enables hot reload */

// Good: Widget class enables hot reload
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(child: Text('Hello Flutter')),
      ),
    );
  }
}
