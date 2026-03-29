/* Controlling Loop Flow
Listing 3-11: Using continue to skip iterations */

void main() {
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;  // Skip multiples of 3
    }
    print(i);
  }
}
