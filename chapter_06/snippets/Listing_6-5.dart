/* Default Constructors
Listing 6-5: Relying on the default constructor */

class Animal {
  String name = 'Unknown';
  int age = 0;
}

void main() {
  var cat = Animal();
  print(cat.name);
  print(cat.age);
}

Unknown
0
