/* Restricting Mixins with on
Listing 7-6: Restricting a mixin to a type with the on keyword */

mixin CanFly  on Animal { void fly()  => print("$name is flying!"); }
mixin CanSwim on Animal { void swim() => print("$name is swimming!"); }

class Animal { String name; Animal(this.name); }

class Duck extends Animal with CanFly, CanSwim { Duck(super.name); }

void main() {
  Duck d = Duck("Donald");
  d.fly();   // Donald is flying!
  d.swim();  // Donald is swimming!
}
