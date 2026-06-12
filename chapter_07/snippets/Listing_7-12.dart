/* Combining All Four: A University System
Listing 7-12: A university system combining extends, with, and implements */

// Student: extends Person, mixes in ActivityLogger, implements Payable
class Student extends Person with ActivityLogger implements Payable {
  String major;
  double balance;
  Student(super.name, super.id, this.major, this.balance);

  @override String getRole() => 'Student ($major)';

  @override
  void processPayment(double amount) {
    balance -= amount;
    print("$name paid tuition: \$$amount | Remaining balance: \$$balance");
    logActivity("Tuition payment: \$$amount");
  }

  @override
  void refund(double amount) {
    balance += amount;
    print("$name received refund: \$$amount | New balance: \$$balance");
    logActivity("Refund received: \$$amount");
  }
}

// Staff: same structure, different role and payment logic
class Staff extends Person with ActivityLogger implements Payable {
  String department;
  double salary;
  Staff(super.name, super.id, this.department, this.salary);

  @override String getRole() => 'Staff ($department)';

  @override
  void processPayment(double amount) {
    salary += amount;
    print("$name received salary: \$$amount | Total to date: \$$salary");
    logActivity("Salary received: \$$amount");
  }

  @override
  void refund(double amount) {
    salary -= amount;
    print("$name returned expense claim: \$$amount");
    logActivity("Expense returned: \$$amount");
  }
}
