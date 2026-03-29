/* Building a Command Line Calculator
Listing 2-8: Command line calculator */

import 'dart:io';

void main() {
  print("Enter first number:");
  String? input1 = stdin.readLineSync();

  print("Enter second number:");
  String? input2 = stdin.readLineSync();

  // Convert to numbers with null safety
  double? num1 = double.tryParse(input1 ?? "");
  double? num2 = double.tryParse(input2 ?? "");

  // Validate input
  if (num1 == null || num2 == null) {
    print("Invalid input , please enter valid numbers");
    return;
  }

  // Perform calculations
  print("\nResults:");
  print("Sum: ${num1 + num2}");
  print("Difference: ${num1 - num2}");
  print("Product: ${num1 * num2}");

  // Check for division by zero
  if (num2 != 0) {
    print("Quotient: ${num1 / num2}");
  } else {
    print("Cannot divide by zero");
  }
}

