/* The for-in Loop
Listing 4-4: Iterating over a list with the for-in loop */

void main() {
  List<String> colors = ['red', 'green', 'blue'];
  for (var color in colors) {
    print('Color: $color');
  }
}

Color: red
Color: green
Color: blue
