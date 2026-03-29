/* Putting It Together: A Number Guessing Game
Listing 3-12: Number guessing game */

import 'dart:io';
import 'dart:math';

void main() {
  int target = Random().nextInt(100) + 1;
  int attempts = 0;

  print("I'm thinking of a number between 1 and 100.");

  while (true) {
    print('Your guess:');
    String? input = stdin.readLineSync();
    int? guess = int.tryParse(input ?? '');

    if (guess == null) {
      print('Please enter a valid number.');
      continue;
    }

    attempts++;

    if (guess < target) {
      print('Too low!');
    } else if (guess > target) {
      print('Too high!');
    } else {
      print('Correct! You got it in $attempts attempts.');
      break;
    }
  }
}
