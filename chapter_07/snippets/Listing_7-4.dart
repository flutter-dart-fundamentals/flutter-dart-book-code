/* Abstract Classes
Listing 7-4: An abstract class with concrete subclasses */

abstract class GameCharacter {
  String name;
  int health;

  GameCharacter(this.name, this.health);

  void attack();       // abstract -- no body, MUST be overridden

  void showHealth() {  // concrete -- shared by all characters
    print("$name has $health HP remaining.");
  }

  void die() {         // concrete -- shared by all characters
    print("$name has been defeated!");
  }
}

class Warrior extends GameCharacter {
  Warrior(super.name, super.health);

  @override
  void attack() => print("$name swings a sword!");
}

class Archer extends GameCharacter {
  Archer(super.name, super.health);

  @override
  void attack() => print("$name shoots an arrow!");
}

void main() {
  Warrior w = Warrior("Thor", 100);
  Archer a  = Archer("Robin Hood", 80);

  w.attack();      // Thor swings a sword!
  w.showHealth();  // Thor has 100 HP remaining.      <-- inherited, free
  a.attack();      // Robin Hood shoots an arrow!
  a.showHealth();  // Robin Hood has 80 HP remaining. <-- inherited, free

  // GameCharacter g = GameCharacter("X", 50);  // COMPILER ERROR
}
