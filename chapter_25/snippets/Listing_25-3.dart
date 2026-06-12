/* How Execution Flows
Listing 25-3: Tracing the execution flow of an await expression */

Future<int> delayedComputation() async {
  await Future.delayed(Duration(seconds: 2));
  return 42;
}

void main() async {
  print('Starting...');
  final result = await delayedComputation();
  print('Result is $result');
}
