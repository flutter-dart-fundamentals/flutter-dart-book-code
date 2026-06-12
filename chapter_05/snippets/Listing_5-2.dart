/* Defining and Calling Functions
Listing 5-2: A void function that performs an action without returning a value */

void greet(String name) {
  print('Hello, $name!');
}

void main() {
  greet('Alice');  // Hello, Alice!
  greet('Bob');    // Hello, Bob!
}
