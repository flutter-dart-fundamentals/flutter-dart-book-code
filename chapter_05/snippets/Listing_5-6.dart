/* Block Scope
Listing 5-6: Block scope: inner blocks see outer variables, not the reverse */

void main() {
  int w = 2;
  if (w == 2) {
    int x = 42;  // x only exists inside this if block
    print(x);    // 42 - works here
    print(w);    // 2 - outer variables are visible in inner blocks
  }
  // print(x);   // ERROR: x doesn't exist out here
  print(w + 2);  // 4 - w is still in scope
}
