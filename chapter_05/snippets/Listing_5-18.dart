/* Returning Functions from Functions
Listing 5-18: Returning a function from a function */

Function createMultiplier(int multiplier) {
  return (int value) {
    return value * multiplier;
  };
}

void main() {
  var triple = createMultiplier(3);
  var double2 = createMultiplier(2);

  print(triple(10));   // 30
  print(double2(10));  // 20
}
