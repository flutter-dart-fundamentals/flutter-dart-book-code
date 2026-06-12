/* The for Loop
Listing 4-2: Iterating over a list with a traditional for loop using the index */

void main() {
  List<String> colors = ['red', 'green', 'blue'];
  for (int i = 0; i < colors.length; i++) {
    print('Color at index $i: ${colors[i]}');
  }
}
// Output:
// Color at index 0: red
// Color at index 1: green
// Color at index 2: blue
