/* The switch Statement
Listing 3-4: The switch statement */

void main() {
  String command = 'start';

  switch (command) {
    case 'start':
      print('Starting the engine...');
      break;
    case 'stop':
      print('Stopping the engine...');
      break;
    case 'reset':
      print('Resetting to defaults...');
      break;
    default:
      print('Unknown command: $command');
  }
}

