/* Higher-Order Functions
Listing 5-19: A higher-order doMath function with named and anonymous functions */

void doMath(Function operation, int a, int b) {
  var result = operation(a, b);
  print('The result is: $result');
}

// Named functions for common operations
int sum(int x, int y) => x + y;
int dif(int x, int y) => x - y;
int product(int x, int y) => x * y;

void main() {
  // Pass named functions
  doMath(sum, 3, 5);      // The result is: 8
  doMath(dif, 3, 5);      // The result is: -2
  doMath(product, 3, 5);  // The result is: 15

  // Pass anonymous functions inline
  doMath((x, y) => x - y, 7, 2);  // The result is: 5

  doMath((x, y) {
    return x * y;
  }, 4, 6);  // The result is: 24
}
