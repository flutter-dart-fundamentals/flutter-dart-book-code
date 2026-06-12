/* Making Named Parameters Required
Listing 5-11: Mixing positional, default, and required named parameters */

void connect(
  String host, {
  int port = 3306,
  required String user,
  required String password,
}) {
  print('Connecting to $host on $port using $user/$password...');
}

void main() {
  // connect('localHost');  // ERROR: user and password required
  connect('localHost', user: 'me', password: '12345');
  // Connecting to localHost on 3306 using me/12345...
}
