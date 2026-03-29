/* Working with Nullable Types
Listing 2-10: Working with nullable values */

void main() {
  // When the value exists
  String? name = "Ahmed";
  print(name ?? "default");       // prints: Ahmed
  print(name?.toUpperCase());     // prints: AHMED

  // When the value is null
  String? missing = null;
  print(missing ?? "default");    // prints: default
  print(missing?.toUpperCase());  // prints: null
}
