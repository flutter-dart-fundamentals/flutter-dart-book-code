/* Interfaces
Listing 7-8: One class in two roles: extends versus implements */

class Animal {
  String name;
  Animal(this.name);
  void makeSound() => print("$name makes a sound.");
}

// Role 1: concrete parent (extends) -- inherits code for free
class Dog extends Animal {
  Dog(super.name);
  @override
  void makeSound() => print("$name says Woof!");  // optional override
}

// Role 2: interface (implements) -- must write everything from scratch
class Cat implements Animal {
  @override String name;    // must rewrite EVEN the property
  Cat(this.name);
  @override
  void makeSound() => print("$name says Meow!");  // mandatory override
}

void main() {
  Dog d = Dog("Rex");
  d.makeSound();   // Rex says Woof!      -- Dog chose to override

  Cat c = Cat("Whiskers");
  c.makeSound();   // Whiskers says Meow! -- Cat was forced to override
}
