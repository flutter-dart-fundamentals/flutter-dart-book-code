/* What Happens If You Forget await
Listing 25-2: Forgetting await: printing a Future instead of its value */

void main() async {
  var result = fetchData();   // forgot await
  print(result);
}
