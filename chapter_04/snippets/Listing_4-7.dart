/* Useful List Methods and Properties
Listing 4-7: Exploring built-in list properties and methods (length, contains, indexOf) */

void main() {
  List<String> names = ['Alice', 'Bob', 'Charlie', 'Andrew'];

  // How many elements?
  print(names.length);              // 4

  // Is it empty?
  print(names.isEmpty);             // false
  print(names.isNotEmpty);          // true

  // Does it contain a specific value?
  print(names.contains('Bob'));     // true
  print(names.contains('Eve'));     // false

  // Where is a specific value?
  print(names.indexOf('Alice'));    // 0
  print(names.indexOf('Eve'));      // -1 (not found)
}
