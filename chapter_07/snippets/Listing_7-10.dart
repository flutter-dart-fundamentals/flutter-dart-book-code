/* Payment System (implements)
Listing 7-10: A payment system built on an implements contract */

class Payable {
  void processPayment(double amount) {}
  void refund(double amount) {}
}

class CreditCard implements Payable {
  @override void processPayment(double amount) => print('Charging \$$amount to card.');
  @override void refund(double amount)          => print('Refunding \$$amount to card.');
}

class Bitcoin implements Payable {
  @override void processPayment(double amount) => print('Broadcasting \$$amount to blockchain.');
  @override void refund(double amount)          => print('Reversing \$$amount on blockchain.');
}
