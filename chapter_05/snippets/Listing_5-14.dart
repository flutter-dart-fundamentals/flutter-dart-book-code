/* Anonymous Functions
Listing 5-14: Assigning an anonymous function to a variable */

void main() {
  var multiply = (int a, int b) {
    return a * b;
  };

  print(multiply(4, 5));  // 20
}
