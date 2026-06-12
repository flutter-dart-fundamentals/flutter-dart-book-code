/* Passing Functions as Parameters
Listing 5-17: Passing a function as a parameter */

void performAction(Function action, String data) {
  action(data);
}

void printData(String message) {
  print('Received: $message');
}

void main() {
  performAction(printData, 'Hello from Dart!');
  // Output: Received: Hello from Dart!
}
