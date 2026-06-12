/* Chaining Async Operations
Listing 25-4: Chaining dependent asynchronous operations */

void main() async {
  String token = await login();
  String profile = await fetchProfile(token);
  List<Map<String, dynamic>> orders = await fetchOrders(profile);
  print(orders);
}
