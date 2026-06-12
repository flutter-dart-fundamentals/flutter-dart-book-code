/* Parameterized Constructors
Listing 6-6: A parameterized constructor using the this shorthand */

class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void info() {
    print('$name is $age years old.');
  }
}

void main() {
  var dog = Animal('Buddy', 3);
  dog.info();
}

Buddy is 3 years old.
