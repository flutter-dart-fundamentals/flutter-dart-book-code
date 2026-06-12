/* Using async and await
Listing 25-1: Fetching and printing data with async and await */

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data fetched');
}

Future<void> fetchAndPrint() async {
  String data = await fetchData();   // pauses here for 2 seconds
  print(data);                        // resumes after data arrives
}

void main() async {
  await fetchAndPrint();
}
