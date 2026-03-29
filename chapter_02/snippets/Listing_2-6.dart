/* Getting Input from Users
Listing 2-6: Reading keyboard input with stdin */

import 'dart:io';  // Required for stdin

void main() {
  print("What's your name?");
  String? name = stdin.readLineSync();
  print("Hello, $name!");
}
