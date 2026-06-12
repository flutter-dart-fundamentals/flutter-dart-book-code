/* Methods
Listing 6-4: A BankAccount class whose methods operate on its properties */

class BankAccount {
  double balance = 0;

  void deposit(double amount) {
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
    } else {
      print('Insufficient funds.');
    }
  }

  void displayBalance() {
    print('Current balance: \$${balance.toStringAsFixed(2)}');
  }
}
