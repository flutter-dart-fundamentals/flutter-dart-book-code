/* Using print() for Debugging
Listing 14-2: Tracing execution with print() in main() and build() */

void main() {
  print('App starting');
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build() called');
    return MaterialApp(
      // ... your widget tree
    );
  }
}
