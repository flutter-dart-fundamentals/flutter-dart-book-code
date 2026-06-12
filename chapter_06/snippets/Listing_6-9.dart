/* Using Getters and Setters
Listing 6-9: Using getters and setters through property syntax */

void main() {
  Student s = Student();
  s.name = 'Laila';     // Calls the setter
  s.age = 20;           // Calls the setter

  print(s.name);        // Calls the getter: Laila
  print(s.age);         // Calls the getter: 20
}

Laila
20
