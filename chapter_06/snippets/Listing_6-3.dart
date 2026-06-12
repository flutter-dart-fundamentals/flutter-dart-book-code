/* Properties
Listing 6-3: A Car class with properties, a constructor, and a method */

class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void info() {
    print('This is a $year $brand $model.');
  }
}

void main() {
  Car myCar = Car('Chevy', 'Suburban', 2025);
  myCar.info();
}

This is a 2025 Chevy Suburban.
