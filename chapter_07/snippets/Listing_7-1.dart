/* Extending a Class
Listing 7-1: Extending a class with the extends keyword */

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void introduce() {
    print("Hi, I'm $name and I'm $age years old.");
  }
}

class Student extends Person {
  String major;

  // name and age belong to Person -- pass them up with super()
  Student(String name, int age, this.major) : super(name, age);

  void study() {
    print('$name is studying $major.');
  }
}

void main() {
  Student s = Student('Laila', 20, 'Computer Science');
  s.introduce();   // Hi, I'm Laila and I'm 20 years old.
  s.study();       // Laila is studying Computer Science.
}
