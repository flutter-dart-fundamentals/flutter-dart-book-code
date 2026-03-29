/* The For Loop
Listing 3-7: Reversing a string with a for loop */

void main() {
  String word = 'hello';
  String reversed = '';
  for (int i = word.length - 1; i >= 0; i--) {
    reversed += word[i];
  }
  print(reversed); // olleh
}
