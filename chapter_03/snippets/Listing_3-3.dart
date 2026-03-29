/* Making Decisions with if 
Listing 3-3: Testing multiple conditions with else-if */

void main() {
  int grade = 75;

  if (grade >= 90) {
    print('You got an A.');
  } else if (grade >= 80) {
    print('You got a B.');
  } else if (grade >= 70) {
    print('You got a C.');
  } else {
    print('You need to improve.');
  }
}