/* Can Mixins Have State?
Listing 7-7: A mixin with state: the ActivityLogger mixin */

mixin ActivityLogger {
  List<String> _logs = [];
  int _logCount = 0;

  void logActivity(String activity) {
    _logs.add(activity);
    _logCount++;
    print("LOG #$_logCount: $activity");
  }

  void showAllLogs() {
    print("--- Activity History ---");
    for (String log in _logs) print("  $log");
  }

  int get logCount => _logCount;
}

class SmartFridge with ActivityLogger {
  String brand;
  SmartFridge(this.brand);

  void openDoor()  { print("$brand door opened."); logActivity("Door opened"); }
  void closeDoor() { print("$brand door closed."); logActivity("Door closed"); }
}

void main() {
  SmartFridge fridge = SmartFridge("LG");
  fridge.openDoor();
  fridge.closeDoor();
  fridge.showAllLogs();
  print("Total logs: ${fridge.logCount}");  // 2
}
