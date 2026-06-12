/* Default Values and Nullability
Listing 5-12: Named parameters without defaults are nullable */

void enableFlags({bool? bold, bool? hidden}) {
  print('$bold and $hidden');
}

void main() {
  enableFlags();                             // null and null
  enableFlags(bold: true);                   // true and null
  enableFlags(hidden: true);                 // null and true
  enableFlags(bold: false, hidden: false);   // false and false
}
