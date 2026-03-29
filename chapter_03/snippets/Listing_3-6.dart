/* The For Loop
Listing 3-6: Iterating over a string with a for loop */

void main() {
  var message = 'Dart';

  for (var i = 0; i < message.length; i++) {
    print('Character $i is ${message[i]}');
  }
}
