/* Introducing Navigator.popUntil()
Listing 23-2: The updated ThirdScreen with Navigator.popUntil() */

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Third Screen'), backgroundColor: Colors.lightBlue),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('Go Back to Second Screen'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          SizedBox(height: 20),
          ElevatedButton(
            child: Text('Go to Home Page'),
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
    );
  }
}
