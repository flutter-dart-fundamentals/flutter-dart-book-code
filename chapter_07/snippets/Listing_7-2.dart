/* Method Overriding
Listing 7-2: Overriding an inherited method with @override */

class Teacher extends Person {
  String subject;

  Teacher(String name, this.subject) : super(name, 0);

  @override
  void introduce() {
    print('I teach $subject.');
  }
}

void main() {
  Teacher t = Teacher('Dr. Ali', 'Biology');
  t.introduce();   // I teach Biology.
}
