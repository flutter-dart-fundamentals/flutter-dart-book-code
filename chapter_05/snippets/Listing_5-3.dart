/* Defining and Calling Functions
Listing 5-3: Returning a value and using functions inside expressions */

int add(int a, int b) {
  return a + b;
}

void main() {
  int result = add(5, 3);
  print(result);              // 8
  print(add(10, add(2, 3)));  // 15 - functions in expressions
}
