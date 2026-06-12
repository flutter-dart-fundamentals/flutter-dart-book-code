/* Mixins
Listing 7-5: Adding capabilities with mixins and the with keyword */

mixin CanFly  { void fly()  => print("I am flying!"); }
mixin CanSwim { void swim() => print("I am swimming!"); }
mixin CanSing { void sing() => print("I am singing!"); }

class Animal { String name; Animal(this.name); }

class Duck  extends Animal with CanFly, CanSwim, CanSing { Duck(super.name); }
class Eagle extends Animal with CanFly  { Eagle(super.name); }
class Fish  extends Animal with CanSwim { Fish(super.name); }

void main() {
  Duck duck = Duck("Donald");
  duck.fly();   // I am flying!
  duck.swim();  // I am swimming!
  duck.sing();  // I am singing!

  Eagle eagle = Eagle("Sam");
  eagle.fly();  // OK
  // eagle.swim(); // COMPILER ERROR -- Eagle never mixed in CanSwim

  Fish fish = Fish("Nemo");
  fish.swim();  // OK
  // fish.fly(); // COMPILER ERROR -- Fish never mixed in CanFly
}
