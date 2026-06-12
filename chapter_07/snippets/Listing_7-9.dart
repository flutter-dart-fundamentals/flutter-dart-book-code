/* Interfaces
Listing 7-9: Implementing multiple interfaces */

class Flyer  { void fly()  => print('Flying...'); }
class Swimmer { void swim() => print('Swimming...'); }

class Duck implements Flyer, Swimmer {
  @override void fly()  => print('Duck is flying.');
  @override void swim() => print('Duck is swimming.');
}
