/* Putting It Together: A Student Grade Tracker
Listing 4-8: Grade tracker program: collecting scores, computing statistics, and assigning letter grades */

import 'dart:io';
void main() {
  List<double> scores = [];

  print('Enter student scores (type "done" to finish):');

  // Collect scores
  while (true) {
    String? input = stdin.readLineSync();
    if (input == null || input.toLowerCase() == 'done') break;

    double? score = double.tryParse(input);
    if (score == null) {
      print('Invalid input. Enter a number or "done".');
      continue;
    }
    scores.add(score);
    print('Added $score. Total scores: ${scores.length}');
  }

  // Check if we have any scores
  if (scores.isEmpty) {
    print('No scores entered.');
    return;
  }

  // Calculate statistics
  double total = 0;
  double highest = scores[0];
  double lowest = scores[0];

  for (var score in scores) {
    total += score;
    if (score > highest) highest = score;
    if (score < lowest) lowest = score;
  }

  double average = total / scores.length;

  // Display results
  print('\nResults for ${scores.length} students:');
  print('Scores: ${scores.join(", ")}');
  print('Average: ${average.toStringAsFixed(1)}');
  print('Highest: $highest');
  print('Lowest: $lowest');

  // Assign letter grades
  print('\nGrades:');
  for (int i = 0; i < scores.length; i++) {
    String grade;
    if (scores[i] >= 90) {
      grade = 'A';
    } else if (scores[i] >= 80) {
      grade = 'B';
    } else if (scores[i] >= 70) {
      grade = 'C';
    } else if (scores[i] >= 60) {
      grade = 'D';
    } else {
      grade = 'F';
    }
    print('  Student ${i + 1}: ${scores[i]} = $grade');
  }
}
