// Exercise 01 - Predict the Output

/* What will the following code print, and in what order? Write your answer
before running it, then check. */


Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () => 'Data fetched');
}

void main() async {
  print('Start');
  String result = await fetchData();
  print(result);
  print('End');
}
