/* Named Parameters
Listing 5-10: Named parameters can be passed in any order */

String subString3({String text = 'TBD', int start = 0, int end = 0}) {
  if (end == 0) {
    end = text.length;
  }
  return text.substring(start, end);
}

void main() {
  String msg = 'Hello, World!';

  // Send only 2 of 3 - order doesn't matter
  print(subString3(text: msg, end: 5));        // Hello

  // All 3 arguments in any order
  print(subString3(start: 0, end: 9, text: msg));  // Hello, Wo

  // No arguments - uses all defaults
  print(subString3());  // TBD
}
