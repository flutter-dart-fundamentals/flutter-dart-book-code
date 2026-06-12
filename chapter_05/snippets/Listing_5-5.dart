/* Function Scope (Local Variables)
Listing 5-5: Local variables exist only inside their own function */

void main() {
  int localCount = 5;
  print(localCount);  // Works fine
}

void anotherFunction() {
  // print(localCount);  // ERROR: localCount doesn't exist here
}
