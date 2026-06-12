/* Top-Level (Global) Scope
Listing 5-4: Top-level (global) variables are accessible from any function */

int globalCount = 10;
String greeting = 'Hello, world!';

void main() {
  print(globalCount);  // 10 - accessible here
  print(greeting);     // Hello, world!
  myFunction();
}

void myFunction() {
  print(globalCount);  // 10 - also accessible here
}
