/* The forEach Method
Listing 4-6: Passing a named function to forEach instead of an anonymous one */

void main() {
  void processNumber(int num) {
    int squared = num * num;
    print('$num squared is $squared');
  }

  List<int> numbers = [1, 2, 3, 4];
  numbers.forEach(processNumber);
}
// Output:
// 1 squared is 1
// 2 squared is 4
// 3 squared is 9
// 4 squared is 16
