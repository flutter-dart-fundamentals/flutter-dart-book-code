/* Working with Numbers
Listing 2-3: Numeric types and type promotion */

void main() {
  int a = 42;              // explicit int
  double b = 3.14;         // explicit double

  print(a.runtimeType);    // int
  print(b.runtimeType);    // double

  num result = a + b;      // int + double → promotes to double
  print(result);           // 45.14
  print(result.runtimeType); // double

  num result2 = a + a;     // int + int → stays int
  print(result2);          // 84
  print(result2.runtimeType); // int
}


