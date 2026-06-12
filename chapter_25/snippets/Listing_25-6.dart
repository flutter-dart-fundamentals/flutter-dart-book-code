/* Predict the Output
Listing 25-6: Code for the Predict the Output exercise */

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data fetched');
}

void main() async {
  print('Start');
  String result = await fetchData();
  print(result);
  print('End');
}
