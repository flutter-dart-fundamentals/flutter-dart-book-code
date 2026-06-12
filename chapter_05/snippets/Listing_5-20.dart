/* Putting It Together: A Flexible List Processor
Listing 5-20: A flexible list processor built from higher-order functions */

// A higher-order function that applies an operation to every element
List<int> transform(List<int> numbers, int Function(int) operation) {
  List<int> result = [];
  for (var num in numbers) {
    result.add(operation(num));
  }
  return result;
}

// A function that summarizes a list with a custom label
void printSummary(String label, List<int> numbers) {
  int total = 0;
  for (var n in numbers) {
    total += n;
  }
  double avg = total / numbers.length;
  print('$label: $numbers');
  print('  Sum: $total, Average: ${avg.toStringAsFixed(1)}');
}

void main() {
  List<int> scores = [72, 85, 91, 68, 79];

  printSummary('Original scores', scores);

  // Curve every score up by 5 using an anonymous function
  var curved = transform(scores, (s) => s + 5);
  printSummary('Curved scores', curved);

  // Square every score
  var squared = transform(scores, (s) => s * s);
  printSummary('Squared scores', squared);
}

Original scores: [72, 85, 91, 68, 79]
  Sum: 395, Average: 79.0
Curved scores: [77, 90, 96, 73, 84]
  Sum: 420, Average: 84.0
Squared scores: [5184, 7225, 8281, 4624, 6241]
  Sum: 31555, Average: 6311.0
