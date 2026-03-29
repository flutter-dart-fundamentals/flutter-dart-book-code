/* Useful String Methods
Listing 2-5: Useful string methods */

void main() {
  String course = 'CSIS 401';

  print(course.length);            // 8
  print(course.toUpperCase());      // CSIS 401
  print(course.toLowerCase());      // csis 401
  print(course);                    // CSIS 401, note course didn’t change
  print(course.contains('401'));    // true
  print(course.substring(5));       // 401
  print(course.replaceAll('401', '130'));  // CSIS 130
  print('  hello  '.trim());        // hello
}
