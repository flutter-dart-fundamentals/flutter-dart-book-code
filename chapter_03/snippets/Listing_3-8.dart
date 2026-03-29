/* The while Loop
Listing 3-8: Input validation with a while loop */

import 'dart:io';

void main() {
  int? number;

  while (number == null) {
    print('Enter a valid number:');
    String? input = stdin.readLineSync();
    number = int.tryParse(input ?? '');

    if (number == null) {
      print("That wasn't a number. Try again.");
    }
  }

  print('You entered: $number');
}
