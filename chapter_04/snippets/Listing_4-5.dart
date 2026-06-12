/* The forEach Method
Listing 4-5: Using forEach with an anonymous function to transform each element */

void main() {
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.forEach((num) {
    int doubled = num * 2;
    print('Original: $num, Doubled: $doubled');
  });
}

Original: 1, Doubled: 2
Original: 2, Doubled: 4
Original: 3, Doubled: 6
Original: 4, Doubled: 8
Original: 5, Doubled: 10
