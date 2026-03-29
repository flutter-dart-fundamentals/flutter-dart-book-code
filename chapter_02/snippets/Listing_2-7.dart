/* Converting Between Types
Listing 2-7: Safe input parsing with tryParse() */

import 'dart:io';  

void main() {
  print('enter a whole number: ');
  String? userInput = stdin.readLineSync();
  int? number = int.tryParse(userInput ?? "");

  if (number != null) {
    print("Valid number: $number");
  } else {
    print("Invalid number , please enter a number");
  }
}

