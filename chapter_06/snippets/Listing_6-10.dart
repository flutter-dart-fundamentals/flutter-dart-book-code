/* Getter and Setter Names Do Not Have to Match the Field Name
Listing 6-10: Getter and setter names are independent of the field names */

class Student {
  String _name = '';
  int _age = 0;

  String get namez => _name;
  set namex(String newName) {
    if (newName.isNotEmpty) {
      _name = newName;
    }
  }

  int get agez => _age;
  set agex(int newAge) {
    if (newAge > 0) {
      _age = newAge;
    }
  }
}

void main() {
  Student s = Student();
  s.namex = 'reeeeef';  // calls the setter namex
  s.agex = 30;           // calls the setter agex
  print(s.namez);        // calls the getter namez: reeeeef
  print(s.agez);         // calls the getter agez: 30
}
