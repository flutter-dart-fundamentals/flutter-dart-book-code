/* Public and Private
Listing 6-11: Public and private fields in a class */

class MyClass {
  String publicField = 'I am public';
  String _privateField = 'I am private';

  void showFields() {
    print(publicField);
    print(_privateField);
  }
}
