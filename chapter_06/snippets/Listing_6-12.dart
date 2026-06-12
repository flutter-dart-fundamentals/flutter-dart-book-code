/* Accessing Properties and Methods
Listing 6-12: Accessing properties and methods with the dot operator */

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
  var car = Car('Chevy', 'Suburban', 2025);
  print(car.brand);
  print(car.model);
  print(car.year);
  car.info();
}

Chevy
Suburban
2025
This is a 2025 Chevy Suburban.
