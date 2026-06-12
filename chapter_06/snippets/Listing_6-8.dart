/* Defining Getters and Setters
Listing 6-8: A Student class with getters and setters */

class Student {
  String _name = '';
  int _age = 0;

  String get name => _name;

  set name(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    }
  }

  int get age => _age;

  set age(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    }
  }
}
