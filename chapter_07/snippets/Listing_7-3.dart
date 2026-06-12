/* Calling the Parent's Method from an Override
Listing 7-3: Calling the parent version of a method with super from an override */

class Teacher extends Person {
  String subject;

  Teacher(String name, this.subject) : super(name, 0);

  @override
  void introduce() {
    super.introduce();           // runs Person's version first
    print('I teach $subject.');  // then adds Teacher's own line
  }
}
