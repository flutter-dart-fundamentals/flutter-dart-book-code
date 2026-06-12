/* Function Parameters Are Local Too
Listing 5-7: Function parameters are local to the function */

void greet(String name) {
  print('Hello, $name!');  // name is accessible here
}

void main() {
  greet('Alice');
  // print(name);  // ERROR: name doesn't exist here
}
