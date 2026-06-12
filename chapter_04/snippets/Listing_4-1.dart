/* Understanding Reference Semantics
Listing 4-1: Reference semantics: assigning a list variable creates a second reference to the same list */

void main() {
  List<int> w1 = [2, 4, 6];
  List<int> w2 = [2, 4, 6];
  List<int> w3 = w1;  // w3 now points to the SAME list as w1

  w1[2] = 10;

  print(w1);  // [2, 4, 10]
  print(w2);  // [2, 4, 6]  - separate list, unaffected
  print(w3);  // [2, 4, 10] - same list as w1, sees the change
}
