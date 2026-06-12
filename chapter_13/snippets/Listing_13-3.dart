/* Nesting Rows and Columns
Listing 13-3: Nesting Rows inside a Column */

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(width: 100, height: 100, color: Colors.red),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text('A'), Text('D'), Text('W')],
          ),
          Container(width: 100, height: 100, color: Colors.green),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Text('Z'), Text('R'), Text('E')],
          ),
          Container(width: 100, height: 100, color: Colors.black),
        ],
      ),
    );
  }
}
