/* The switch Statement
Listing 3-5: Grouping switch cases */

void main() {
  int dayNumber = 6;

  switch (dayNumber) {
    case 6:
    case 7:
      print('Weekend');
      break;
    default:
      print('Weekday');
  }
}
