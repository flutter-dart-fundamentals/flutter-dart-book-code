/* The do while Loop
Listing 3-9: do-while loop */

import 'dart:io';

void main() {
  String? input;

  do {
    print('Enter "quit" to exit:');
    input = stdin.readLineSync();
    print('You said: $input');
  } while (input != 'quit');

  print('Goodbye!');
}
