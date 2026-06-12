/* Defining and Calling Functions
Listing 5-1: Defining and calling a simple function */

bool isOdd(int number) {
  return number % 2 != 0;
}

void main() {
  print(isOdd(7));  // true
  print(isOdd(4));  // false
}
