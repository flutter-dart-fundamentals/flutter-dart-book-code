/* Working with Numbers
Listing 2-4: String interpolation */

void main() {
  String name = "Ahmed";
  int age = 25;

  print('Hello $name, you are $age years old');
  print('$name in 2 years will be ${age + 2} years old');
  print('$name has ${name.length} characters');
  print('The sum of 3 + 2 is ${3 + 2}');
  print('$name in upper case: ${name.toUpperCase()}');
}
