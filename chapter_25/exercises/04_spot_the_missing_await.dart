// Exercise 04 - Spot the Missing await

/* Run the following code and explain what is printed and why. Then add the
missing keyword to make it print the actual data string. */


Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 1), () => 'Data fetched');
}

void main() {
  var result = fetchData();
  print(result);
}
