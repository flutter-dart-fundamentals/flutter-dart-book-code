/* Controlling Loop Flow
Listing 3-10: Using break to exit a loop early */

void main() {
  String text = 'Hello, World!';

  for (int i = 0; i < text.length; i++) {
    String char = text[i];
    if (char == ',') {
      print('Comma found at index $i. Stopping.');
      break;
    }
    print('Character: $char');
  }
  print('Loop exited.');
}

