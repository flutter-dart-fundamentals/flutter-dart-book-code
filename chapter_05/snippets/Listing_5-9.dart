/* Optional Positional Parameters
Listing 5-9: Optional positional parameters with a default value */

String subString2(String text, int start, [int end = 0]) {
  if (end == 0) {
    end = text.length;
  }
  return text.substring(start, end);
}

void main() {
  String text = 'Hello, World!';
  print(subString2(text, 0, 5));  // Hello
  print(subString2(text, 0));     // Hello, World!
}
