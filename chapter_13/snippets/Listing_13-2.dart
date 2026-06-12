/* Column: Vertical Layout
Listing 13-2: Stacking containers vertically with Column */

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(width: 100, height: 100, color: Colors.red),
        Container(width: 100, height: 100, color: Colors.green),
        Container(width: 100, height: 100, color: Colors.black),
      ],
    );
  }
}
