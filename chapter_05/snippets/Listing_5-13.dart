/* Arrow Functions
Listing 5-13: Arrow function shorthand for single-expression functions */

// Full form
bool isOdd(int number) {
  return number % 2 != 0;
}

// Arrow form - identical behavior
bool isOdd(int number) => number % 2 != 0;

int add(int a, int b) => a + b;

void main() {
  print(add(5, 3));   // 8
  print(isOdd(4));    // false
}
