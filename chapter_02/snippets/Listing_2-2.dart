/* Everything is an Object
Listing 2-2: Exploring the numeric type hierarchy */

void main() {
   int age = 25;
   print( age.isEven );          // true, method from int
   print( age.toString() );      // "25" , inherited from Object

   double price = 9.99;
   print (price.abs() );         // 9.99 ,  method from double
   print (price.ceil() ) ;        // 10,  round up

   num value = 42;      // Can hold either int or double
   print( value.runtimeType ) ;   // int ,  inherited from Object
}
