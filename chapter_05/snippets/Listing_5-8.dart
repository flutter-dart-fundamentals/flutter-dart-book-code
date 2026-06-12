/* Required Positional Parameters
Listing 5-8: Required positional parameters */

String subString(String text, int start, int end) {
  return text.substring(start, end);
}

void main() {
  String text = 'Hello, World!';
  print(subString(text, 0, 5));  // Hello
}
