/* Spot the Missing await
Listing 25-7: Code for the Spot the Missing await exercise */

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 1), () => 'Data fetched');
}

void main() {
  var result = fetchData();
  print(result);
}
