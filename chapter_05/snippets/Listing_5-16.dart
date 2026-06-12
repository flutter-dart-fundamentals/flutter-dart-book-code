/* Assigning Functions to Variables
Listing 5-16: Storing a reference to a named function in a variable */

void greet(String name) {
  print('Hello, $name!');
}

void main() {
  var greetFunction = greet;  // No parentheses - storing, not calling
  greetFunction('Alice');     // Hello, Alice!
}
